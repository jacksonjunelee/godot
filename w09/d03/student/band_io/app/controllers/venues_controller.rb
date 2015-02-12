class VenuesController < ActiveRecord::Base
  def index
    @venues = Venue.all
  end
end
