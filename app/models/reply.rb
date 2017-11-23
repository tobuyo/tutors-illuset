class Reply < ApplicationRecord
	belongs_to :comment, optional: true 
  belongs_to :user, optional: true
  mount_uploader :replyimage, ReplyImageUploader
end
