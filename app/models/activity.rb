class Activity < ApplicationRecord
  has_many :users, through: :bookings
  has_many :bookings, dependent: :destroy
  belongs_to :theme
  belongs_to :user
  has_one_attached :photo
  geocoded_by :location
  validates :title, presence: true
  after_validation :geocode, if: :will_save_change_to_location?

  include PgSearch::Model
  pg_search_scope :search_by_title_and_location,
    against: [:title, :location],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

  def days_to_start
    (start_date - Date.today).to_i
  end
end
