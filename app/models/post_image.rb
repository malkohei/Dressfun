class PostImage < ApplicationRecord
  belongs_to :Post
  attachment :image
end
