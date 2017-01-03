class AddSignInCountToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :sign_in_count, :integer
  end
end
