class Admin::UsersController < AdminController
	layout "admin"
	def index
		@users= User.all
	end
end