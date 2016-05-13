Tests for Voyage Mongo Replication support.

Follow these steps in command-line  to  set up the external mongodb environment:

```
# set up some variables
baseRepo=/home/tinchodias/dev/voyage/testreplicationdb/
replSet=demo2

# only first time: create db dirs
for i in `seq 1 3`;
do
	mkdir $baseRepo$replSet$i
done


# serve repos
for i in `seq 1 3`;
do
	mongod --port 2703$i --dbpath $baseRepo$replSet$i --replSet $replSet --smallfiles --oplogSize 128 &>/dev/null &
done

# wait them a bit
sleep 5s

# configure replication set
mongo --port 27031 --eval 'rs.initiate({ "_id" : '\"${replSet}\"', "members" : [ { "_id" : 1, "host" : "localhost:27031", } ], })'
# add secondaries
mongo --port 27031 --eval 'rs.add("localhost:27032")'
mongo --port 27031 --eval 'rs.add("localhost:27033")'
```