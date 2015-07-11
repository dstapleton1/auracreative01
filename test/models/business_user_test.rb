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

require 'test_helper'

class BusinessUserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
