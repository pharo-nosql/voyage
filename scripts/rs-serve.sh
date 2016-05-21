#!/bin/bash

# serve dbs
for i in `seq 1 3`;
do
	mongod --port 2703$i --dbpath $baseRepositoryPath$replicaSetName$i --replSet $replicaSetName --smallfiles --oplogSize 128 &>/dev/null &
done

