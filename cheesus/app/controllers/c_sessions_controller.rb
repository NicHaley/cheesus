class CSessionsController < ApplicationController
	def create
		c_user = CUser.find_by_email(params[:email])
		if c_user && c_user.authenticate(params[:password])
			session[:c_user_id] = c_user.id
			redirect_to restaurants_url, :notice => "Logged in!"
		else
			flash.now[:alert] = "Invalid email or password"
			render "new"
		end
	end

	def destroy
		session[:c_user_id] = nil
		redirect_to restaurants_url, notice: "Logged out!"
	end
	
	def new
	end
end
