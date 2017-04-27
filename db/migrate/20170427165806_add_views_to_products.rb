class AddViewsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :view, :integer
  end
end
