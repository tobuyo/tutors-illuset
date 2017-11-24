class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # , :lockable, :timeoutable and :omniauthable
  mount_uploader :image, ImageUploader
  mount_uploader :icon, UserimagesUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :lessons
  has_many :comments
  is_impressionable
  include FriendlyId
  friendly_id :username

  # extend FriendlyId
  # friendly_id :username, use: :slugged


end
