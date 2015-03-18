require 'foursquare2'

class Foursquare
  attr_accessor :client
  def initialize
    @config =  YAML::load(File.open("config/config.yml"))['foursquare']
    @client = Foursquare2::Client.new(:client_id => @config['CLIENT_ID'],
    :client_secret => @config['CLIENT_SECRET'],
    :api_version => @config['API_VERSION']
    )
  end
end
