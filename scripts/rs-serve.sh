#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/rs-checkEnvirnomentVariables.sh


# serve dbs
for i in `seq 1 3`;
do
	echo starting mongod at port 2703$i at $baseRepositoryPath$replicaSetName$i
	mongod --port 2703$i --dbpath $baseRepositoryPath$replicaSetName$i --replSet $replicaSetName --smallfiles --oplogSize 128 &>/dev/null &
done

# The node 27034 is the unique member of another replica set. This is useful for some tests.
i=4
echo starting mongod at port 2703$i at $baseRepositoryPath$replicaSetName$i
mongod --port 2703$i --dbpath $baseRepositoryPath$replicaSetName$i --replSet $replicaSetName-alone --smallfiles --oplogSize 128 &>/dev/null &


