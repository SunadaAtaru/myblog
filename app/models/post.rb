class Post < ApplicationRecord
  belongs_to :user

  has_many :photos, dependent: :destroy
  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy

  has_many :comments, dependent: :destroy

  accepts_nested_attributes_for :photos

  def liked_by(current_user)#userからcurrent_userに書き直す。
    
    Like.find_by(user_id: current_user.id, post_id: id)#userからcurrent_userに書き直す。
  end

  has_many :likes, -> { order(created_at: :desc) }, dependent: :destroy


end
