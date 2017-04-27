class AddColumnsToOrderItens < ActiveRecord::Migration[5.0]
  def change
    add_column :order_itens, :unit_price, :integer
    add_column :order_itens, :total_price, :integer
  end
end
