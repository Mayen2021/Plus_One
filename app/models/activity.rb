class Activity < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  belongs_to :theme
  belongs_to :user
  has_one_attached :photo
  geocoded_by :location
  validates :title, presence: true
  after_validation :geocode, if: :will_save_change_to_location?

end
