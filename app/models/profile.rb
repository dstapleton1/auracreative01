# == Schema Information
#
# Table name: profiles
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  name        :string
#  profile_pic :string
#  bio         :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  phone       :string
#

class Profile < ActiveRecord::Base
  belongs_to :user

  mount_uploader :profile_pic, ProfilePicUploader
end
