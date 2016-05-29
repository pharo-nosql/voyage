#!/bin/bash

if [ -z "$baseRepositoryPath" ]
then 
	echo 'Please set $baseRepositoryPath as a path to an existing directory (ending in slash), to locate replica set members files'; exit 1;
fi

if [ -z "$replicaSetName" ]
then 
    echo 'Please set $replicaSetName as a non-empty name for the replica set'; exit 1;
fi

