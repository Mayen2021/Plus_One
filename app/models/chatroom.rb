class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user
  belongs_to :activity_owner, class_name: 'User'

  validates :user, :activity_owner, presence: true
end
