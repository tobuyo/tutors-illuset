class Lesson < ApplicationRecord
  acts_as_taggable
  acts_as_taggable_on :tags
  belongs_to :user, optional: true 
  has_many :comments
  validates :user_id, presence: true
  validates :title, presence: true
  validates :price, presence: false
  validates :simple_description, presence: true, length: { maximum: 140 }
  validates :detail_description, presence: true, length: { maximum: 140 }
  is_impressionable
  mount_uploader :header, LessonimageUploader

end
