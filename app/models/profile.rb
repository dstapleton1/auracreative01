class Profile < ActiveRecord::Base
  belongs_to :user

  mount_uploader :profile_pic, ProfilePicUploader
end
