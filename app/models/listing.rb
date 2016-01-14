class Listing < ActiveRecord::Base
  belongs_to :user
    mount_uploaders :avatars, AvatarUploader
  # attr_accessible :user_id, :listing, :image
  # mount_uploader :image, AvatarUploader
end
