class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private
  
	def confirm_logged_in
		unless session[:user_id]
			flash[:notice] = "Please Log in"
			redirect_to(:controller => 'access',:action => 'Login')
			return false
		else
			return true
		end
	end
end
