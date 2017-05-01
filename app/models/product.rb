class Product < ApplicationRecord
  geocoded_by :full_address
  has_attachments :photos, maximum: 10
  after_validation :geocode, if: :address_changed?
  has_one :order_iten

  belongs_to :user
  belongs_to :category
  has_many :questions

  validates :name, :description, :price, :category_id , presence: :true
  validates :address, :state, :zip_code, presence: :true

  def full_address
    "#{address}, #{city}, #{state}, #{zip_code}"
  end
end
