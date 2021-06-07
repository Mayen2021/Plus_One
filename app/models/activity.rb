class Activity < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
end
