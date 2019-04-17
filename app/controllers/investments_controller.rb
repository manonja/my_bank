class InvestmentsController < ApplicationController
    
    def index
        @investments = Investment.all
    end

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
        
        #@user.saving
        # @user.investments
        #@saving = Saving.find(params[:id])
        #@investment = Investment.find(params[:id])
        #@transfer = Transfer.find(params[:id])
    end
    
    def create
        @investment = Investment.create(invest_params)
        # @investment.save
        redirect_to investment_path(@investment)
    end
    
    def edit
        @investment = Investment.find(params[:id])
    
    end
    
    def update
        @investment = Investment.update(invest_params)
    end
    
    def delete
        
    end
    
    private
    
    def invest_params
        params.require(:investment).permit(:amount)
    end

end
