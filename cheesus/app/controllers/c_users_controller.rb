class CUsersController < ApplicationController
  def new
  	@c_user = CUser.new
  end

  def create
  		@c_user = CUser.new(c_user_params)
  		if @c_user.save 
  			redirect_to restaurants_url, notice: "Signed up!"
  		else
  			render "new"
  		end
  end
end
