class Order < ApplicationRecord
  belongs_to :user

  validates :card_number, :security_name, presence: true, uniqueness: true
  validates :card_name, :card_expiration, presence: true
end
