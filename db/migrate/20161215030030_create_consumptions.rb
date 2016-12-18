class CreateConsumptions < ActiveRecord::Migration
  def change
    create_table :consumptions do |t|
      t.integer :product_id
      t.integer :supply_id
      t.integer :consumption

      t.timestamps null: false
    end
  end
end
