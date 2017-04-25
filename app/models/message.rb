class Message < ApplicationRecord
  belongs_to :chat
  belongs_to :user

  validates :chat, :user, presence: true
end
