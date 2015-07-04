class BusinessProfile < ActiveRecord::Base
  has_many :business_users
  has_many :users, through: :business_users

  extend FriendlyId
  friendly_id :name, use: :slugged
end
