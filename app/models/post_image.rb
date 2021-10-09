class PostImage < ApplicationRecord
  
  # 多：１
  belongs_to :user
  
  has_many :post_comments, dependent: :destroy
  
  
  # 画像アップ用メッソド
attachment :image
end
