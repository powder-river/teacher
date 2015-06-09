class SessionsController < ApplicationController
  def login
  	if request.post?
  	  user = User.find_by_email(params[:email])
  	  if user && user.password == params[:password]
  		  session[:user_id] = user.id
  		  redirect_to parents_path, notice: 'You have logged in!'
  	  else
  		flash[:notice] = 'Login Failed'
      end
    end
  end

  def logout
    
  end
end
