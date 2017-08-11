class UserHike < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  validates :list, presence: true, inclusion: { in: ["wishlist", "my_hikes"] }
  validate :photo_size_validation
  mount_uploader :photo, PhotoUploader

  private

  def photo_size_validation
    errors[:photo] << "Photo must be less than 800KB" if photo.size > 0.8.megabytes
  end
end
