class AddCashierIdToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :cashier_id, :integer
  end
end
