class RSessionsController < ApplicationController
	def create
		r_user = RUser.find_by_email(params[:email])
		if r_user && r_user.authenticate(params[:password])
			session[:r_user_id] = r_user.id
			restaurant = Restaurant.find_by_r_user_id(r_user.id)
			if restaurant
				redirect_to restaurant_url(restaurant), :notice => "Logged in!"
			else
				redirect_to new_restaurant_url, :notice => "Logged in!"
			end
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
