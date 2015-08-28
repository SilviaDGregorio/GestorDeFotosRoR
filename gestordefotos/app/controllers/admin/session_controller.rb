#encoding: utf-8
class Admin::SessionController < ApplicationController
	layout "admin"
	def login
		@user=User.new
	end
	def check_login
		@user_find = User.find_by(email: params[:user][:email])

		if !@user_find.nil?
			if params[:user][:password]== @user_find.password
					redirect_to silvia_url
			else

				redirect_to root_url, :flash => { :error => "email o contraseña desconocidos"}
			end
		else
			redirect_to root_url, :flash => { :error => "email o contraseña desconocidos"}
		end

	end
end
