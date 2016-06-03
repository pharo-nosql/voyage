#!/bin/bash

set -e
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
$DIR/rs-checkEnvirnomentVariables.sh


# only first time: create db dirs
for i in `seq 1 3`;
do
	mkdir $baseRepositoryPath$replicaSetName$i
done

