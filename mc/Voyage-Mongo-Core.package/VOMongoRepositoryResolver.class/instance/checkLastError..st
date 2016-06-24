private replication
checkLastError: db
	| lastError |
	lastError := db lastError.

	(lastError isNotMaster or: [ lastError isNotPrimary ])
		ifTrue: [ VOMongoReplicaSetError signal ].

	