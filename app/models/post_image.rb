class PostImage < ApplicationRecord
  
  # 多：１
  belongs_to :user
  
  # 画像アップ用メッソド
attachment :image
end
