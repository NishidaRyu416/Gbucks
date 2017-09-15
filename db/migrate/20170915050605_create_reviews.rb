class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :drink, foreign_key: true
      t.string :stars
      t.string :body

      t.timestamps
    end
  end
end
