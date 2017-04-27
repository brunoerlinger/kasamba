class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :products, dependent: :destroy
  # has_many :favorites, through: :products, dependent: :destroy
  has_many :questions, through: :products, dependent: :destroy

  # has_many :orders, through: :order_itens, dependent: :destroy
  # has_many :order_itens, through: :products, dependent: :destroy

  # # has_many :reviews, through: :products, dependent: :destroy
  # # has_many :given_reviews, through: :products, source: :reviews

  # has_many :chats, through: :products
  # has_many :messages, through: :chats

  validates :address, :city, :zip_code, :country, :state, :borough, presence: true
  validates :first_name, :last_name, presence: true
  validates :username, presence: true, uniqueness: true
  has_attachment :photo

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
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

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
        user.first_name = data["first_name"] if user.first_name.blank?
        user.last_name = data["last_name"] if user.last_name.blank?
        user.photo = data["facebook_picture_url"] if user.photo.blank?

      end
    end
  end

  #  def self.koala(auth)
  #   access_token = auth['token']
  #   facebook = Koala::Facebook::API.new(access_token)
  #   facebook.get_object("me?fields=name,picture")
  # end
end
