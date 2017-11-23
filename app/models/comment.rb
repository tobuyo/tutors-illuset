class Comment < ApplicationRecord
	belongs_to :user, optional: true 
  belongs_to :lesson
  has_many :replies
  mount_uploader :commentimage, CommentImageUploader
end
