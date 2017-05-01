class AddColumnToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :city, :string
    add_column :products, :state, :string
    add_column :products, :country, :string
    add_column :products, :zip_code, :string
  end
end
