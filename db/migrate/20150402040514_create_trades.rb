class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :shares
      t.string :symbol

      t.timestamps null: false
    end
  end
end
