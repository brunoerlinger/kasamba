class RemoveColumnFromOrderItens < ActiveRecord::Migration[5.0]
  def change
    remove_column :order_itens, :total_price, :integer
  end
end
