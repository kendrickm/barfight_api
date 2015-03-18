DOCKERID=$(docker run -d -p 5984:5984 klaemo/couchdb)
sleep 10
curl -X PUT http://docker:5984/locations
#curl -X PUT http://docker:5984/locations/4ac6769df964a52075b420e3 -d '{"fsq_id": "4ac6769df964a52075b420e3", "name":"The Beermongers", "twitter":"thebeermongers"}'
#curl -X PUT http://docker:5984/config/bbbd5b349b7aa42d7cf0c38dd7028652 -d '{"name":"Hopworks", "twitter":"hopworksbeer" }'
#curl -X PUT http://docker:5984/config/bbbd5b349b7aa42d7cf0c38dd70278f4 -d '{ "name":"The Hop and Vine", "twitter":"thehopandvine" }'
#curl -X PUT http://docker:5984/config/bbbd5b349b7aa42d7cf0c38dd702737d -d '{"name":"Saraveza", "twitter":"saraveza" }'
docker attach $DOCKERID
