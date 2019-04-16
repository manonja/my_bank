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
      @account = Account.create(user_id: @user.id, currency_name: 'dollars' , amount: 100)
      @saving = Saving.create(amount: 0, user_id: @user.id, account_id: @account.id)
      @investment = Investment.create(amount: 0, user_id: @user.id, account_id: @account_id, bank_rate: 0)
      @user.account = @account
      @user.saving = @saving
      @user.investments[0] = @investment
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
