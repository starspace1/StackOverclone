class UsersController < ApplicationController
  
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to root_path
  end

  private
  
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :location, :knowledge)
  end

end
