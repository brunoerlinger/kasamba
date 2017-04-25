class Order < ApplicationRecord
  belongs_to :user

  validates :order_iten, :user, presence:true
  validates :card_number, :security_name, presence: true, uniqueness: true
  validates :card_name, :card_expiration, presence: true
end
