class AddPriceToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :price, :string
  end
end
