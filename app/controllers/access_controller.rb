class AccessController < ApplicationController
  
  
  def login
  # Display the login form
  end

  def index
  # Display nothing
  end
  
  def attempt_login

	if params[:username].present? && params[:password].present?
		user_found = User.where(:username => params[:username]).first
		if user_found
			auth_user = user_found.authenticate(params[:password])
		end
	end
	if auth_user
		# mark as logged in
		session[:user_id] = auth_user.id
		session[:username] = auth_user.username
		flash[:notice] = "Logged in successfully"
		redirect_to(:controller =>'users', :action => 'index')
	else
		flash[:notice] = "Invalid Username/Password combination"
		redirect_to(:action => 'login')
	end
	
  end

  def logout
    # mark user as logged out
    session[:user_id] = nil
    session[:username] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

end
