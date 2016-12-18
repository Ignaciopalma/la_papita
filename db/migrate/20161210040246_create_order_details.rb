class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :order_id
      t.string :product
      t.integer :quantity
      t.string :comments
      t.integer :sub_total

      t.timestamps null: false
    end
  end
end
