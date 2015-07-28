class UsersController < ApplicationController
  before_action :authorize, except: [:new,:create]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to user_path @user
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(session[:user_id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path @user
    else
      redirect_to edit_user_path @user
    end
  end

  def confirm_destroy

  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    params.require(:user).permit(:fname,:lname,:username,:email,:password,:password_confirmation,:github_username)
  end
end
