class Question < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :question, :product, :user, presence: true

  scope :to_respond, -> { where(answer: nil) }
end
