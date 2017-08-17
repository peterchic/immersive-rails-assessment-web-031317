class SessionsController < ApplicationController

  def new
  end

  def create
    byebug
    user = User.find_by(:username => params[:username])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to episodes_path
    else
      render 'new'
    end
  end

end
