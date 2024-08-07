#!/bin/bash 

mongoimport --uri mongodb://localhost:27017 --db=acmeair_customerdb --collection="customer" --file=/docker-entrypoint-initdb.d/acmeair_customerdb.json  --jsonArray
mongoimport --uri mongodb://localhost:27017 --db=acmeair_flightdb --collection="airportCodeMapping" --file=/docker-entrypoint-initdb.d/airportCodeMapping.json  --jsonArray
mongoimport --uri mongodb://localhost:27017 --db=acmeair_flightdb --collection="flight" --file=/docker-entrypoint-initdb.d/flight.json  --jsonArray
mongoimport --uri mongodb://localhost:27017 --db=acmeair_flightdb --collection="flightSegment" --file=/docker-entrypoint-initdb.d/flightSegment.json  --jsonArray
