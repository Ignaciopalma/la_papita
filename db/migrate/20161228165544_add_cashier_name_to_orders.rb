class AddCashierNameToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cashier_name, :string
  end
end
