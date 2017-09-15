class AddExplanationToDrinks < ActiveRecord::Migration[5.1]
  def change
    add_column :drinks, :explanation, :string
  end
end
