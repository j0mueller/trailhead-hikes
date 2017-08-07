class UserHike < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  validates :list, presence: true, inclusion: { in: ["wishlist", "my_hikes"] }
end
