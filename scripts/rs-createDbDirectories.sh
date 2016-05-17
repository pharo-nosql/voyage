#!/bin/bash

# only first time: create db dirs
for i in `seq 1 3`;
do
	mkdir $baseRepositoryPath$replicaSetName$i
done

