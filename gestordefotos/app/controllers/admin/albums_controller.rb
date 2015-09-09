#encoding: utf-8
class Admin::AlbumsController < AdminController
	layout "admin"
	def index
		@albums = Album.all		
	end

	def new
		@album = Album.new
		
	end

	def create
		@album= Album.new(album_params)

		if @album.save
			redirect_to users_url, :flash => { :error => "Nuevo album creado con éxito"}
		else
			puts @album
			puts @album.save
			Rails.logger.info(@album.errors.messages.inspect)  
			render "new"
		end

	end
	def edit
		@album=Album.find(params[:id])
		@photos=@album.photos
	end

	private

	def album_params
		params.require(:album).permit(:name)
	end
end
