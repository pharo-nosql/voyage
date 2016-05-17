private replication
currentPrimaryResolver
	adminPool withDatabase: [ :db |
		| replicaSetStatus primaryMember replicaSetRepository |
		replicaSetStatus := db replicaSetStatus.
		primaryMember := replicaSetStatus primaryMember.

		replicaSetRepository := replicaSetRepositoryByName
			at: primaryMember name
			ifAbsentPut: [ self newReplicaSetRepositoryFor: primaryMember ].
			
		^ replicaSetRepository resolver ]