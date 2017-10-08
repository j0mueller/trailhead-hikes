class JournalEntry < ApplicationRecord
  belongs_to :user_hike
  has_one :user, through: :user_hikes
  has_one :hike, through: :user_hikes


end
