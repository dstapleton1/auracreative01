# == Schema Information
#
# Table name: business_users
#
#  id                  :integer          not null, primary key
#  user_id             :integer
#  business_profile_id :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class BusinessUser < ActiveRecord::Base
  belongs_to :user
  belongs_to :business_profile
end
