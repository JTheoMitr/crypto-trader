class CreateInvestments < ActiveRecord::Migration[6.1]
  def change
    create_table :investments do |t|
      t.decimal :amount
      t.belongs_to :user
      t.belongs_to :cryptocoin

      t.timestamps
    end
  end
end
