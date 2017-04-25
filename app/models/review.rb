class Review < ApplicationRecord
  belongs_to :user
  belongs_to :product

  validates :rating, :content, presence: true
end
