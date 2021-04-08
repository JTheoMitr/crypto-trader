class AddYieldToWithdrawals < ActiveRecord::Migration[6.1]
  def change
    add_column :withdrawals, :yield, :decimal
  end
end
