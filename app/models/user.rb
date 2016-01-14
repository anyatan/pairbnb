class User < ActiveRecord::Base
  include Clearance::User
  has_many :listings 
  mount_uploaders :avatar, AvatarUploader
end
