class ApplicationController < ActionController::Base

	before_action :check_login, except: [:login]

	private
	def check_login 
		@user = if uid = session[:uid] then User.find(uid) else nil end 
		@store = if @user then @user.cur_store else Store.first end 
		# redirect_to login_path
	end 

end
