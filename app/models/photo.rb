class Photo < ApplicationRecord
  belongs_to :post

  validates :images,presence: true
  # ここを追加する
  mount_uploader :image, ImageUploader
end
