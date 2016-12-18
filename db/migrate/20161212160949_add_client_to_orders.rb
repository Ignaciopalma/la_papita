class AddClientToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :client, :string
  end
end
