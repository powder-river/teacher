class SessionsController < ApplicationController
  def login
  	if request.post?
  	  educator = Educator.find_by_email(params[:email])
  	  if educator && educator.authenticate(params[:password])
  		  session[:educator_id] = educator.id
  		  redirect_to parents_path, notice: 'You have logged in!'
  	  else
  		flash[:notice] = 'Login Failed'
      end
    end
  end

  def logout
    session[:user_id]
    redirect_to sessions_login_path, notice: "You have logged out!"
  end
end
