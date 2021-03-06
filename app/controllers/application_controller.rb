class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

  private
  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = t "please_log_in"
      redirect_to login_url
    end
  end

  def verify_admin
    unless current_user.isadmin?
      flash[:danger] = t "verify_admin"
      redirect_to root_path
    end
  end
end
