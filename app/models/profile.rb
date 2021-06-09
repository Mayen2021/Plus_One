class Profile < ApplicationRecord
  belongs_to :user
  has_many :selected_themes
end
