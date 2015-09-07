#encoding: utf-8
class Admin::UsersController < AdminController
	layout "admin"
	def index
		@users= User.all
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
	  @user = User.find(params[:id])
	  if @user.update(user_params)
	    redirect_to users_url, :flash => { :error => "Datos de usuario cambiados con éxito"}
	  else
	  	Rails.logger.info(@user.errors.messages.inspect)  
	    render "edit"
	  end
	end


	private
	def user_params
		params.require(:user).permit(:name, :email,:email_confirmation,:password,:password_confirmation)
	end
end