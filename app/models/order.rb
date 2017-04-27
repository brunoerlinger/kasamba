class Order < ApplicationRecord
  belongs_to :user
  has_many :order_itens
  before_save :update_subtotal

  validates :order_iten, :user, presence:true
  validates :card_number, :security_name, presence: true, uniqueness: true
  validates :card_name, :card_expiration, presence: true

  def subtotal
    order_itens.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
  end

  private

  def update_subtotal
    self[:subtotal] = subtotal
  end
end
