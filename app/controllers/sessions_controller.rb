class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(:name => params[:user][:name])
    if @user && @user.authenticate(params[:user][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      redirect_to
  end

end

# As a user, I should be able to login. Build out
# Login Form so that our users can login.
# To be RESTful - the form should post to '/sessions'
# and go to our SessionsController#create action.
