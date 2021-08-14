class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.references :user, null: false, foreign_key: true
      t.string :meal_name
      t.string :category
      t.text :description
      t.text :ingredients
      t.float :price
      t.string :place
      t.string :time
      t.text :message
      t.string :guest_number

      t.timestamps
    end
  end
end
