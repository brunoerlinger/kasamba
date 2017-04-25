class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :products, dependent: :destroy
  # has_many :favorites, through: :products, dependent: :destroy
  # has_many :questions, through: :products, dependent: :destroy

  # has_many :orders, through: :order_itens, dependent: :destroy
  # has_many :order_itens, through: :products, dependent: :destroy

  # # has_many :reviews, through: :products, dependent: :destroy
  # # has_many :given_reviews, through: :products, source: :reviews

  # has_many :chats, through: :products
  # has_many :messages, through: :chats

  validates :first_name, :last_name, :address, :city, :zip_code, presence: true
  validates :password, :country, presence: true
  validates :email, :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
