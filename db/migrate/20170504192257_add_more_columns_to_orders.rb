class AddMoreColumnsToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :address, :string
    add_column :orders, :state, :string
    add_column :orders, :city, :string
    add_column :orders, :country, :string
    add_column :orders, :zip_code, :string
  end
end
