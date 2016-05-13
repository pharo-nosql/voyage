accessing replication
isSupported
	self flag: #todo. "Do not use exceptions to know it"

	self mongoDo: [ :mongo | 
		[ mongo replicaSetStatus ]
			on: MongoNoReplicaSet
			do: [ ^ false ] ].
	^ true