class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def c_current_user
    @c_current_user ||= CUser.find(session[:c_user_id]) if session[:c_user_id]
  end

  helper_method :c_current_user

  def r_current_user
    @r_current_user ||= RUser.find(session[:r_user_id]) if session[:r_user_id]
  end

  helper_method :r_current_user

  def ensure_c_logged_in
    unless c_current_user
      flash[:alert] = "Please log in as a customer user."
      redirect_to new_c_session_path #fix to login page for both
    end
  end

   def ensure_r_logged_in
    unless r_current_user
      flash[:alert] = "Please log in as a restaurant user."
      redirect_to root_path #fix to login page for both
    end
  end

end
