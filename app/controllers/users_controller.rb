class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
    @account = Account.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create

    @user = User.create(user_params)
    if @user.save && @user.account == nil
      # here we can create a home page
      redirect_to new_account_path
    elsif @user.save
      redirect_to @user
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])

  end

  def update
    @user = User.update(user_params)

    redirect_to @user
  end

  def delete

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :age, :email, :gender)
  end

end
