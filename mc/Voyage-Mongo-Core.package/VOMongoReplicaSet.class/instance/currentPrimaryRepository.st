private
currentPrimaryRepository
	| mongo replicaSetStatus primaryMember |
	mongo :=
		Mongo 
			host: initialHost 
			port: initialPort.
	mongo open.

	[
	replicaSetStatus := mongo replicaSetStatus.
	primaryMember := replicaSetStatus primaryMember.

	^repositoryByMemberName
		at: primaryMember name
		ifAbsentPut: [ self newRepositoryFor: primaryMember ]

	] ensure: [ mongo close ]