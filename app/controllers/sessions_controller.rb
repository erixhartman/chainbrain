class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to locations_path, notice: "Logged In!"
    else
      flash.now[:alert] = "Invalid User Name or Password"
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    #redirect_to root_url
    redirect_to locations_path
  end
end
