class Photo < ApplicationRecord
  belongs_to :post

  validates :images,presence: true
  # ここを追加
  mount_uploader :image, ImageUploader
end
