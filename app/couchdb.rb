require 'couchrest'
require 'YAML'
class CouchDB
  attr_accessor :loc_db
  def initialize
    @config =  YAML::load(File.open("config/config.yml"))['couch']
    @loc_db = CouchRest.database("#{@config['url']}/locations")
  end
end
