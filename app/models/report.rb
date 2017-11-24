class Report < ApplicationRecord
	belongs_to :lesson, optional: true 
  belongs_to :user, optional: true
  mount_uploader :reportimage, ReportImageUploader
end
