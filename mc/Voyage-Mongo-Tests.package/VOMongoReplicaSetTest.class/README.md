Test for Voyage-Mongo's Replica Set support.

Execute this command-line script  to  set up the external mongodb environment.

```
# set up some variables
baseRepo=/home/tinchodias/dev/voyage/testreplicationdb/
replSet=foo

# only first time: create db dirs
for i in `seq 1 3`;
do
	mkdir $baseRepo$replSet$i
done

# serve repos
for i in `seq 1 3`;
do
	xfce4-terminal --tab -T $replSet$i -e "mongod --port 2703$i --dbpath $baseRepo$replSet$i --replSet $replSet --smallfiles --oplogSize 128"
done

# wait them a bit
sleep 5s

# configure replication set
mongo --port 27031 --eval 'rs.initiate({ "_id" : '\"${replSet}\"', "members" : [ { "_id" : 1, "host" : "localhost:27031", } ], })'
# add secondaries
mongo --port 27031 --eval 'rs.add("localhost:27032")'
mongo --port 27031 --eval 'rs.add("localhost:27033")'
```