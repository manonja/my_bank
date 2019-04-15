class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.update(user_params)
  end

  def delete

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :email, :gender)
  end
end
