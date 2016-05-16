accessing replication
currentPrimaryResolver
	adminPool withDatabase: [ :db |
		| replicaSetStatus primaryMember |
		replicaSetStatus := db replicaSetStatus.
		primaryMember := replicaSetStatus primaryMember.

		^resolverByMemberName
			at: primaryMember name
			ifAbsentPut: [ self newResolverFor: primaryMember ]
		]