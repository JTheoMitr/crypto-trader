class AddYieldToInvestments < ActiveRecord::Migration[6.1]
  def change
    add_column :investments, :yield, :decimal
  end
end
