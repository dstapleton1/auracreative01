# == Schema Information
#
# Table name: business_profiles
#
#  id           :integer          not null, primary key
#  name         :string
#  logo         :string
#  description  :text
#  head_count   :integer
#  website_link :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  slug         :string
#

require 'test_helper'

class BusinessProfileTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
