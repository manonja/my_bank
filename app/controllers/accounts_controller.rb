class AccountsController < ApplicationController

  def index
    @accounts = Account.all
  end

  def new
    @account = Account.new
  end

  def show
    @account = Account.find(params[:id])
  end

  def create

    @account = Account.create(account_params)
    redirect_to @account

  end

  def edit
    @account = Account.find(params[:id])

  end

  def update
    @account = Account.update(account_params)

    redirect_to @account
  end

  def delete

  end

  private

  def account_params
    params.require(:account).permit(:email_adress, :currency_name, :amount)
  end


end
