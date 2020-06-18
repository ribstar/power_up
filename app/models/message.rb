class Message < ApplicationRecord
  belongs_to :community
  belongs_to :user

  validates :content, presence: true, unless: :image?

  # mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
end
