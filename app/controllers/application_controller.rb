class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  private

  
	def error_messages_for(object)
		render(:partial => 'application/error_messages', :locals => {:object => object})
	end

	helper_method :error_messages_for

  
	def confirm_logged_in
		unless session[:user_id]
			flash[:notice] = "Please Log in"
			redirect_to(:controller => 'access',:action => 'Login')
			return false
		else
			return true
		end
	end
	
		helper_method :confirm_logged_in
	
end
