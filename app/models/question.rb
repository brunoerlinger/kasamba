class Question < ApplicationRecord
  belongs_to :product
  belongs_to :user

  validates :question, :answer, presence: true
end
