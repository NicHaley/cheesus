class RSessionsController < ApplicationController
  def create
  	    r_user = RUser.find_by_email(params[:email])
	    if r_user && r_user.authenticate(params[:password])
	      session[:r_user_id] = r_user.id
	      redirect_to new_restaurant_url, :notice => "Logged in!"
	    else
	      flash.now[:alert] = "Invalid email or password"
	      render "new"
	    end
  end

  def destroy
  	session[:r_user_id] = nil
	redirect_to new_restaurant_url, notice: "Logged out!"
  end

  def new
  end
end
