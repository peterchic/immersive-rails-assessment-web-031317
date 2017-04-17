class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  # before_action :logged_in?

  # 
  # private
  #
  # def authorize_user
  #   unless logged_in?
  #     flash[:notice] = "You must be loggin in to do this!"
  #     redirect_to sessions_path
  #   end
  #
  #   def logged_in?
  #     session[:user_id].present?
  #   end
  #
  # end

end
