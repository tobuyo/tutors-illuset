class Lesson < ApplicationRecord

  belongs_to :user

  validates :user_id, presence: true
  validates :title, presence: true
  validates :price, presence: true
  validates :simple_description, presence: true, length: { maximum: 140 }
  validates :detail_description, presence: true, length: { maximum: 140 }

  mount_uploader :image, ImageUploader

end
