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

    if @user.account == nil
      @account = Account.create(user_id: @user.id)
      @saving = Saving.create(user_id: @user.id, account_id: @account.id)
      # @investment = Investment.create(user_id: @user.id, account_id: @account_id)

      redirect_to user_path(@user)
    elsif @user.save
        redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def profile
   if !@current_user
     flash[:notice] = "Please sign in to continue!"
     redirect_to "/login_form"
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
    params.require(:user).permit(:first_name, :last_name, :age, :email, :gender, :password)
  end

end
