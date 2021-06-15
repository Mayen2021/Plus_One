class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :activity
  enum status: [ :pending, :confirmed, :rejected ]
end
