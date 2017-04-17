class UsersController < ApplicationController


  def new
    @user = User.new

  end


  def index
    @users = User.find(params[:id])
    redirect_to users_path

  end

  def create
    @user = User.create(params[:id])
    redirect_to user_path

  end


  def show

  end

end
