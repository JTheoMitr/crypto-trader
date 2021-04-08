class WithdrawalsController < ApplicationController
    before_action :set_withdrawal, only: [:show, :edit, :update, :destroy]

    def new
        if !!current_user && params[:cryptocoin_id] && @cryptocoin = Cryptocoin.find_by_id(params[:cryptocoin_id])
          @withdrawal = @cryptocoin.withdrawals.build
        elsif !current_user
          redirect_to '/login', alert: "Must Be Logged In to Perform Action"
        else
          @withdrawal = Withdrawal.new
        end
      end  

    def create
        @withdrawal = current_user.withdrawals.build(withdrawal_params)
        if (@withdrawal.amount > current_user.wallet) 
          redirect_to new_withdrawal_path, alert: "Insufficient Yield"
        elsif @withdrawal.save
          
          current_user.update(wallet: (current_user.wallet + @withdrawal.amount))
          @withdrawal.update(yield: @withdrawal.crypto_yield)
          redirect_to withdrawal_path(@withdrawal)
          
        else
          redirect_to cryptocoins_path
        end
    end

    def index
        if params[:cryptocoin_id] && @cryptocoin = Cryptocoin.find_by_id(params[:cryptocoin_id])
          @withdrawals = @cryptocoin.withdrawals.where(user: current_user).ordered_by_amount
        elsif !current_user
          redirect_to '/login', alert: "Must Be Logged In to Perform Action"
        else
          @withdrawals = current_user.withdrawals.ordered_by_amount
        end
    end

    def show
      
    end

    private

  def withdrawal_params
    params.require(:withdrawal).permit(:amount, :yield, :cryptocoin_id, cryptocoin_attributes: [:name])
  end

  def set_withdrawal
    @withdrawal = Withdrawal.find(params[:id])
  end

end
