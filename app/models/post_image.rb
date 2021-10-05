class PostImage < ApplicationRecord
  
  # 多：１
  belongs_to :user
  
end
