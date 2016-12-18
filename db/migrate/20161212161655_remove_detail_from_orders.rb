class RemoveDetailFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :detail, :string
  end
end
