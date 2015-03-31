class CreateStockOrderEntries < ActiveRecord::Migration
  def change
    create_table :stock_order_entries do |t|
      t.integer :Shares
      t.string :Symbol

      t.timestamps null: false
    end
  end
end
