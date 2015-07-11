class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :business_profile

  validates :name, :description, :location, :starts, :ends, presence: true
  validate :starts_in_future, :starts_before_ends

  def self.future_events
    where('starts > ?', DateTime.now)
  end

  def self.chron_order
    order(starts: :asc)
  end

  def starts_in_future
    if starts.present? && starts < DateTime.now
      errors.add(:starts, "Cannot be in the past")
    end
  end

  def starts_before_ends
    if starts > ends
      errors.add(:ends, "Cannot be before start date/time")
    end
  end

  extend FriendlyId
  friendly_id :name, use: :slugged
end
