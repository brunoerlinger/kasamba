class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, :description, :price, :address , presence: :true

end
