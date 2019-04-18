class InvestmentsController < ApplicationController

    def new
        @investment = Investment.new
        #! shit way but it works
        @drinkbox = Company.all.first
        @starbucks = Company.all.second
        @monzo = Company.all.third
        @seabin = Company.all.fourth
        @sourceai = Company.all.fifth
    end
    
    def show
        @user = User.find(params[:id])
        @company = Company.new
        @investment = Investment.new
    end
    
    def create
            #* Creates a new investment WITH the current user id within its params
        @investment = Investment.new(invest_params)
        @investment.user_id = current_user.id
        @investment.account_id = current_user.account.id
            #* Using the params, grabs the rate and invested params
        @rate = params[:investment][:companies]
        @invested_amount = params[:investment][:amount]
        @stocks = (@invested_amount.to_i * @rate.to_i) / 100
            #* Logic checking if the entered amount is higher then the account balance. Results in redirection.
        if @invested_amount.to_i <= @current_user.account.amount
            # @investment.amount += @stocks
            # @investment.save
            @investment.update(amount: @investment.amount - @stocks)
            account = @current_user.account
            account.update(amount: account.amount - @stocks)
            redirect_to investment_path(@current_user)
        else
            redirect_to new_investment_path(@current_user)
        end
    end
    
    private
    
    def invest_params
        params.require(:investment).permit(:amount)
    end

end
