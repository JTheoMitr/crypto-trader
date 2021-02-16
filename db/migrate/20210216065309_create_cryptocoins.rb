class CreateCryptocoins < ActiveRecord::Migration[6.1]
  def change
    create_table :cryptocoins do |t|

      t.timestamps
    end
  end
end
