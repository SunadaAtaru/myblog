class Photo < ApplicationRecord
  belongs_to :post

  validates :image,presence: true
  # ここを追加する
  mount_uploader :image, ImageUploader
end
