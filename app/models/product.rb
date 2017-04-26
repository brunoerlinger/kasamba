class Product < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  belongs_to :category

  validates :name, :description, :price, :address ,presence: :true

end
