class CUsersController < ApplicationController
  def new
  	@c_user = CUser.new
  end

  def create
  		@c_user = CUser.new(c_user_params)
  		if @c_user.save 
  			redirect_to new_c_user_url, notice: "Signed up!"
  		else
  			render "new"
  		end
  end

  private
  def c_user_params
    params.require(:c_user).permit(:email, :password, :password_confirmation, :name, :url)
  end
end
