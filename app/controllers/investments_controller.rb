class InvestmentsController < ApplicationController

  def new
    @investment = Investment.new
  end

  def show
    @investment = Investment.find(params[:id])
  end

  def create
    @investment = Investment.find(investment_params)
  end

  private

  def investment_params
    params.require(:investment).permit(:amount, :user_id, :account_id, :bank_rate)
  end
end
