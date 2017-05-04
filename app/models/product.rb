class Product < ApplicationRecord
  geocoded_by :full_address
  has_attachments :photos, maximum: 10
  after_validation :geocode, if: :address_changed?
  has_one :order_iten
  scope :not_sold, -> { where("id not in (?)", Order.where(finished: true).map(&:order_itens).flatten.map(&:product)) }

  belongs_to :user
  belongs_to :category
  has_many :questions

  validates :name, :description, :price, :category_id, :photos, presence: :true
  validates :address, :city, :state, :zip_code, presence: :true

  def full_address
    "#{address}, #{city}, #{state}, #{zip_code}"
  end
end
