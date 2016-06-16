#!/bin/bash

set -e

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/rs-checkEnvirnomentVariables.sh

scenarioMongoNames=(ZERO A B C)

echo starting testing scenario
for i in `seq 1 3`;
do
	echo starting mongo ${scenarioMongoNames[i]} at port 2703$i at $baseRepositoryPath$replicaSetName$i
	mongod --port 2703$i --dbpath $baseRepositoryPath$replicaSetName$i --replSet $replicaSetName --smallfiles --oplogSize 128 &>/dev/null &
done

