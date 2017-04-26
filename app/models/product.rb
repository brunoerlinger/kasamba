class Product < ApplicationRecord
  geocoded_by :address
  has_attachments :photos, maximum: 10
  after_validation :geocode, if: :address_changed?

  belongs_to :user
  belongs_to :category

  validates :name, :description, :price, :address , presence: :true

end
