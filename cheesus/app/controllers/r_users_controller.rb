class RUsersController < ApplicationController
  def new
  	@r_user = RUser.new
  end

  def create
  	@r_user = RUser.new(r_user_params)
  		if @r_user.save 
  			redirect_to new_restaurant_url, notice: "Signed up!"
  		else
  			render "new"
  		end
  end

  private
  def r_user_params
  	params.require(:r_user).permit(:email, :password, :password_confirmation, :name)
  end
end
