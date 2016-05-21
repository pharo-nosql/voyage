#!/bin/bash

mongo --port 27031 --eval 'rs.initiate({ "_id" : '\"${replicaSetName}\"', "members" : [ { "_id" : 1, "host" : "localhost:27031", } ], })'
# add secondaries
mongo --port 27031 --eval 'rs.add("localhost:27032")'
mongo --port 27031 --eval 'rs.add("localhost:27033")'

