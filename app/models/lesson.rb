class Lesson < ApplicationRecord
  acts_as_taggable
  belongs_to :user, optional: true 
  validates :user_id, presence: true
  validates :title, presence: true
  validates :price, presence: false
  validates :simple_description, presence: true, length: { maximum: 140 }
  validates :detail_description, presence: true, length: { maximum: 140 }

  mount_uploader :header, LessonimageUploader

end
