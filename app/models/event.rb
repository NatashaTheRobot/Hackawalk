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
#  latitude    :float
#  venue       :string(255)
#  description :text
#

class Event < ActiveRecord::Base
  attr_accessible :url, :name, :address, :city, :state, :zip, :time, :latitude, :venue, :description
  validates_uniqueness_of :url
  
  
end
