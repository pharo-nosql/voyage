#!/bin/bash

for i in `seq 1 3`;
do
	echo stop mongo at port 2703$i
	mongo --port 2703$i --eval "db.getSiblingDB('admin').shutdownServer()"
done

