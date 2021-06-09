class Activity < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  belongs_to :theme
  has_one_attached :photo

  validates :title, presence: true
end
