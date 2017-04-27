class AddColumnsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :total, :integer
    add_column :orders, :subtotal, :integer
  end
end
