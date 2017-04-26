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
         :omniauthable, omniauth_providers: [:facebook]

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.where(provider: auth.provider, uid: auth.uid).first
    user ||= User.where(email: auth.info.email).first # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user
  end

end
