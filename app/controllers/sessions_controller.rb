class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_user_name(params[:user_name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Login Successful"
      redirect_to root_url
    else
      flash.now[:error] = "Invalid Username and/or Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'Logged Out!'
  end
end
