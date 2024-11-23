class Post < ApplicationRecord

  has_one_attached :image
  belongs_to :user
  belongs_to :category, optional: true

  validates :title, presence: true
  validates :image, presence: true
  validates :body ,presence: true, length: {maximum: 200}


end
