class AddDescriptionToCryptocoins < ActiveRecord::Migration[6.1]
  def change
    add_column :cryptocoins, :description, :string
  end
end
