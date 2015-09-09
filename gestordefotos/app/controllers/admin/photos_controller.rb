#encoding: utf-8
class Admin::PhotosController < ApplicationController
	layout "admin"
	def index

	end
	def new
		@photo= Photo.new
	end
	def create
		@photo= Photo.new(photo_params)
		@photo.update(:album_id => params[:album_id])
		if @photo.save
			redirect_to edit_album_url(params[:album_id]), :flash => { :error => "Nueva foto creada con éxito"}
		else
			puts @photo
			puts @photo.save
			Rails.logger.info(@photo.errors.messages.inspect)  
			render "new"
		end

	end

		private
	def photo_params
		params.require(:photo).permit(:image,:album_id)
	end
end

