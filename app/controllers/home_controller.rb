class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @events = Event.future_events.chron_order.limit(3)
  end
end
