require "rMeetup"

# Constants
API_KEY = "7591155787650297b384e483f6e5d50"

puts "THIS IS A SCRAPER  \n"

RMeetup::Client.api_key = "API_KEY"
results = RMeetup::Client.fetch(:events,{:zip => "ZIP_CODE"})
results.each do |result|
  # Do something with the result
end