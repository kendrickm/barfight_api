#Barfight API
This is a Sinatra app that provides RESTful endpoints for the barfight application

##Prior to setup
* Update config/config.yml with Foursquare Client ID/Secret
* I'm running CouchDB in a docker container, and have updated my /etc/hosts file with an entry to my boot2docker. Update config.yml as needed.

##Setup
* The setup.sh will start the docker instance, create the base db, and attach to the docker.
* `bundle install` from application directory to install rubygems

##Running
ruby loc.rb will start the application and bind to localhost port 4567
