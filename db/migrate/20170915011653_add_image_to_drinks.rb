class AddImageToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :image, :string
  end
end
