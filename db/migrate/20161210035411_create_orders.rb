class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :detail
      t.string :payment_method
      t.integer :total

      t.timestamps null: false
    end
  end
end
