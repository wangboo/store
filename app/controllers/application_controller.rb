class ApplicationController < ActionController::Base

	before_action :check_login, except: [:login]

	def render_json_ok msg={}
		render json: {_r: '0'}.merge(msg)
	end 

	private
	def check_login 
		@user = if uid = session[:uid] then User.find(uid) else User.first end 
		@store = if @user then @user.cur_store else Store.first end 
		# redirect_to login_path
	end 

end
