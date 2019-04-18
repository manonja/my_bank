class SavingsController < ApplicationController

    def show
        @user = User.find(params[:id])
        @saving = Saving.find(params[:id])
    end

    def create
        #* Creates a new saving
        @saving = Saving.new(saving_params)
        @saving.user_id = current_user.id
        @saving.account_id = current_user.account.id
        #* Saved money is in the variable
        @saved_money = params[:saving][:amount].to_i
        # * Logic to add money to your savings
        if @saved_money <= @current_user.account.amount
            
            @saving.update(amount: @saving.amount - @saved_money)
            account = @current_user.account
            account.update(amount: account.amount - @saved_money)
            redirect_to user_path(@current_user)
        else
            redirect_to saving_path(@current_user)
        end
        
    end















    def update
        @saving = Saving.find(params[:id])
        @saving.update(saving_params)
        @saved_money = params[:saving][:amount]
        
        if @saved_money.to_i <= @current_user.account.amount
            
            @saving.amount.update(amount: amount + @saved_money.to_i)
            # @current_user.account.amount - @saved_money.to_i
            @current_user.account.update(amount: amount - @saved_money.to_i)

            @saving.save
            redirect_to user_path(@current_user)
        else
            redirect_to saving_path(@current_user)
        end
    end
    
    def new
        @saving = Saving.new
    end

    private
    def saving_params
        params.require(:saving).permit(:amount)
    end


end
