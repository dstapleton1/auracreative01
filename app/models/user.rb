class User < ActiveRecord::Base
  has_one :profile
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :assign_resident_role # assign role the first time a user is created

  def assign_resident_role
    self.add_role :resident
  end
end
