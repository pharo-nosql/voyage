accessing replication
currentPrimaryResolver
	self mongoDo: [ :mongo |
		| replicaSetStatus primaryMember |
		replicaSetStatus := mongo replicaSetStatus.
		primaryMember := replicaSetStatus primaryMember.

		^resolverByMemberName
			at: primaryMember name
			ifAbsentPut: [ self newResolverFor: primaryMember ]
		]