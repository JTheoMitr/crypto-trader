class AddAbvToCryptocoins < ActiveRecord::Migration[6.1]
  def change
    add_column :cryptocoins, :abv, :string
  end
end
