class Post < ApplicationRecord

  belongs_to :user
  has_many :post_images, dependent: :destroy
  accepts_attachments_for :post_images, attachment: :image

  validates :caption, presence: true, length: {maximum: 150}
  validates :color, presence: true

end
