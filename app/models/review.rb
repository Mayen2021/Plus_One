class Review < ApplicationRecord
  belong_to :activities

  validates :comment, presence: true
  validates :comment, length: { minimum: 6 }

end
