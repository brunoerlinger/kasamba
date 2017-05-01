class Order < ApplicationRecord
  belongs_to :user
  has_many :order_itens
  before_save :update_subtotal

  validates :user, presence:true
  # validates :card_number, :security_number, presence: true, uniqueness: true
  # validates :card_name, :card_expiration, presence: true

  def subtotal
    order_itens.collect { |oi| oi.valid? ? oi.unit_price : 0 }.sum
  end

  private

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
