class Photo < ApplicationRecord
  belongs_to :post

  validates :images,presence: true
end
