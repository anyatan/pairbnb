class Listing < ActiveRecord::Base
  belongs_to :user
  has_many :reservations
  mount_uploaders :avatars, AvatarUploader
  searchkick  
  # attr_accessible :user_id, :listing, :image
  # mount_uploader :image, AvatarUploader
end
