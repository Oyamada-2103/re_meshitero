class PostImage < ApplicationRecord

  # 多：１
  belongs_to :user
  # 画像アップ用メッソド
  attachment :image

  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
 
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
 
end
