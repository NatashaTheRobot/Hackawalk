# == Schema Information
#
# Table name: events
#
#  id          :integer         not null, primary key
#  url         :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  name        :string(255)
#  address     :string(255)
#  city        :string(255)
#  state       :string(255)
#  zip         :integer
#  time        :integer
#  latitude    :float(10)
#  venue       :string(255)
#  description :text
#  longitude   :decimal(10, 6)
#
require 'meetup_events'

class Event < ActiveRecord::Base
  attr_accessible :url, :name, :address, :city, :state, :zip, :time, :latitude, :longitude, :venue, :description
  validates_uniqueness_of :url

  def self.get_meetup_events
    events = Meetup::Events.new
    event_results = events.get_with_zip('94103')
    event_results.each do |event|
      next if event.nil?
      next unless Event.find_by_url(event.event_url).nil?
      meetup_params = { :url => event.event_url, :name => event.event_name, :address => event.address,
                        :city => event.city, :state => event.state, :zip => event.zip, :time => event.time,
                        :latitude => event.lat, :longitude => event.lon, :venue => event.venue_name,
                        :description => event.description }

      self.create meetup_params
    end
  end
end
