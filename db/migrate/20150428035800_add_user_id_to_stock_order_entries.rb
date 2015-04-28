class AddUserIdToStockOrderEntries < ActiveRecord::Migration
  def change
    add_column :stock_order_entries, :user_id, :string
  end
end
