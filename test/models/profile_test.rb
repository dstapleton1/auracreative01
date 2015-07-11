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

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
