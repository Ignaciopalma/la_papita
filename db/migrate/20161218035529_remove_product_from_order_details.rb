class RemoveProductFromOrderDetails < ActiveRecord::Migration
  def change
    remove_column :order_details, :product, :string
  end
end
