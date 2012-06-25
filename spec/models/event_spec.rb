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

require 'spec_helper'

describe Event do
  pending "add some examples to (or delete) #{__FILE__}"
end
