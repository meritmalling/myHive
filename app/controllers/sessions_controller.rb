class SessionsController < ApplicationController

  def new
    render layout: false
  end

  def create
    user = User.authenticate(params[:user][:email],
      params[:user][:password])

    if user
      session[:user_id] = user.id
      redirect_to hives_path
    else
      redirect_to root_path
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
