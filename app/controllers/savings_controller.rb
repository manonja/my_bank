class SavingsController < ApplicationController

    def show
        @user = User.find(params[:id])
        @saving = Saving.find(params[:id])

        @saving = Saving.new
    end

    def new
        @saving = Saving.find(params[:id])

        # saving = Saving.create(
        #   content: params[:comment][:content],
        #   user_id: @current_user.id
        # )

        redirect_to saving_path(saving)
    end

    private

    def saving_params
        params.require(:saving).permit(:amount)
    end


end
