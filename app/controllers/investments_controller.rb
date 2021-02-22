class InvestmentsController < ApplicationController


    def new
        @investment = Investment.new
    end    

    def create
        @investment = current_user.investments.build(investment_params)
        if @investment.save
          redirect_to investment_path(@investment)
        else
          render :new
        end
    end

    def index
      @investments = Investment.all
    end

    def show
      @investment = Investment.find(params[:id])
    end

    def edit
    end

    def update
    end

private

def investment_params
    params.require(:investment).permit(
      :amount, 
      cryptocoin_ids:[], 
      cryptocoins_attributes: [
        :name
      ]
    )
end

end
