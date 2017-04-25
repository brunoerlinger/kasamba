class CreateOrderItens < ActiveRecord::Migration[5.0]
  def change
    create_table :order_itens do |t|
      t.references :order, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
