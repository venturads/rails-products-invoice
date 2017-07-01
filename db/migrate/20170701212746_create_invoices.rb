class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :product_id
      t.integer :line_items
      t.decimal :total_price
      t.decimal :discount
      t.decimal :amount_paid
      t.string :due_date

      t.timestamps null: false
    end
  end
end
