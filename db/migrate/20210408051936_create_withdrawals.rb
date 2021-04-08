class CreateWithdrawals < ActiveRecord::Migration[6.1]
  def change
    create_table :withdrawals do |t|
      t.decimal :amount
      t.belongs_to :user
      t.belongs_to :cryptocoin

      t.timestamps
    end
  end
end
