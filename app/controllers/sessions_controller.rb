class SessionsController < ApplicationController
  def new
  end

  def create
    @user = User.find_by_email(params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      flash[:success] = "Hi #{current_user.fname}! Get To Snipping!"
      redirect_to user_path(@user)
    else
      redirect_to new_session_path
      flash[:danger] = 'Login failed :( Please Try Again.'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
