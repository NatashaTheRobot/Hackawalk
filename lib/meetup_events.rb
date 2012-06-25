module Meetup
  Entry = Class.new(OpenStruct)

  class Events
    def get_with_zip(zip)
      response = Faraday.get "https://api.meetup.com/2/open_events.json?zip=#{zip}&radius=50&time=-1w,&status=upcoming&key=7d5553683b193a68019f421b3a561"
      doc = JSON.parse(response.body)

      entries = []

      doc['results'].map do |entry|
        if entry['venue']
          unless entry['event_url'].empty?
            entry = Entry.new(
              zip:          entry['venue']['zip'],
              lon:          entry['venue']['lon'],
              lat:          entry['venue']['lat'],
              venue_name:   entry['venue']['name'],
              state:        entry['venue']['state'],
              address:      entry['venue']['address_1'],
              city:         entry['venue']['city'],
              time:         entry['time'],
              event_url:    entry['event_url'],
              description:  entry['description'],
              event_name:   entry['name']
            )
          end
        end
      end
    end
  end
end