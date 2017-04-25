class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :user, :products, presence:true
  validates :rating, :content, presence: true
end
