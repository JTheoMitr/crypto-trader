class InvestmentsController < ApplicationController

    def show
        @investment = Investment.find(params[:id])
      end

    def index
        @investments = Investment.all
    end

    def new
        @investment = Investment.new
    end    

    def create
        investment = Investment.create(investment_params)
        redirect_to investment
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
