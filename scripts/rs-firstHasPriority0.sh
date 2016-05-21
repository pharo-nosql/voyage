#!/bin/bash

mongo --port 27031 --eval 'rs.reconfig({ "_id" : '\"${replicaSetName}\"', "members" : [ { "_id" : 1, "host" : "localhost:27031", "priority" : 0.0, }, { "_id" : 2, "host" : "localhost:27032", }, { "_id" : 3, "host" : "localhost:27033", } ], }, {force: true})'
