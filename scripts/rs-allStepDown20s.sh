#!/bin/bash

for i in `seq 1 3`;
do
	mongo --port 2703$i --eval 'rs.freeze(20)'
done

