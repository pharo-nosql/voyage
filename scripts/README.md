
# Scripts for testing replication support

## Only first time

1. Define two environment variables. I add these two lines to my `.profile` file at home (linux)

```
baseRepositoryPath=/home/tinchodias/dev/voyage/testreplicationdb/; export baseRepositoryPath
replicaSetName=demo; export replicaSetName
```

2. Execute `./rs-setup.sh`


## Scenario 1: Connect directly to primary node

1. Execute `./rs-firstHasPriority5.sh`

2. Evaluate in Pharo workspace:

```
repository := VOMongoRepository
		host: 'localhost'
		port: 27033
		database: 'Voyage-Tests'.
		
repository save: (VOTestPilot new name: 'Pepe').
repository selectAll: VOTestPilot.
```

## Scenario 2: Resolve operations via replica set

1. Execute `./rs-firstHasPriority0.sh`. This will force other node to be primary.

2. In the Pharo workspace, play more with the same `repository` instance.


## Scenario 3: Restore the original node

1. Execute again `./rs-firstHasPriority5.sh`. 

2. Play more in the Pharo workspace.

