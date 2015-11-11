class SessionsController < ApplicationController

  def new
    render :layout => false
  end

  def create
    user = User.authenticate(params[:user][:email],
      params[:user][:password])

    if user
      session[:user_id] = user.id
      flash[:success] = "welcome back!"
      redirect_to hives_path
    else
      flash[:success] = "sorry, something went wrong! please try logging in again"
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = "goodbye for now, happy beekeeping!"
    redirect_to root_path
  end
end
