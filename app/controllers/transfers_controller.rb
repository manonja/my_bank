class TransfersController < ApplicationController
  def index
    @transfers = Transfer.all
  end

  def show
    @transfer = Transfer.find(params[:id])
  end

  def new
    @transfer = Transfer.new
    @users = User.all
  end

  def create
    @transfer = Transfer.new(transfer_params)
    @transfer.sender_id = current_user.id
    @money_sent = @transfer.amount

    if @transfer.save
      account = current_user.account
      account.amount -= @money_sent.to_i
      account.save
      redirect_to user_path(current_user)
    end
  end

  private

  def transfer_params
    params.require(:transfer).permit(:name, :receiver_id, :amount)
  end
end
