class CreateEndShifts < ActiveRecord::Migration
  def change
    create_table :end_shifts do |t|
      t.string :cashier_name
      t.integer :cash
      t.integer :debit
      t.integer :credit
      t.string :agreement

      t.timestamps null: false
    end
  end
end
