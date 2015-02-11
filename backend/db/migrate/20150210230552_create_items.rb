class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.integer :quantity

      t.references :grocery_list, index: true, null: false
      t.timestamps null: false
    end
  end
end
