class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  # def create
  #   @user = User.new(user_params)
  #   @user.save
  # end

  def user_params
    params.require(:user).permit(:name, :email, :description)
  end
end

# :reset_password_token
# :reset_password_token
