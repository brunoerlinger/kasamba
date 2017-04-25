class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :card_number
      t.integer :security_number
      t.string :card_name
      t.string :card_expiration
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
