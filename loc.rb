require 'sinatra'
require 'json'
require_relative 'app/couchdb'
require_relative 'app/foursquare'
before do
  #fsq_id = ENV['venue']
  @loc_db = CouchDB.new.loc_db
  @fsq = Foursquare.new.client
end

get '/location/:venue' do
  fsq_id = params[:venue]
  begin
    location = @fsq.venue(fsq_id)
    venue = @loc_db.get(fsq_id)
  rescue RestClient::ResourceNotFound
      puts "No database record found, pulling from foursquare"
      @loc_db.save_doc({'_id' => fsq_id, :name => location['name'], :twitter => location['contact']['twitter'], :fb_id => location['contact']['facebook']})
      venue = @loc_db.get(fsq_id)
  rescue Foursquare2::APIError
      puts "Venue not found for #{fsq_id} please verify id from Foursquare"
      halt 404
  end

  venue.to_json
end
