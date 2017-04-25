class OrderIten < ApplicationRecord
  belongs_to :order
  belongs_to :product

  validates :product, :order, presence:true
end
