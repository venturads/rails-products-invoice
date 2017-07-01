class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :model
      t.string :sku
      t.string :serial_number
      t.decimal :cost_price
      t.decimal :price
      t.integer :inventory
      t.string :vendor

      t.timestamps null: false
    end
  end
end
