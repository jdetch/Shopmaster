class CreateGroceryLists < ActiveRecord::Migration
  def change
    create_table :grocery_lists do |t|
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end

    add_index :grocery_lists, :name, unique: true
  end
end
