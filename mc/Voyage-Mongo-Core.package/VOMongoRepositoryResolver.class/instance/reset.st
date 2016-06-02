accessing
reset
	collections := Dictionary new.
	
	replicaSetMembers := repository members.
	adminByMember := Dictionary new.
	self refreshedMembers.	
	replicaSetStatus := self freshReplicaStatus.
	
	primaryPool ifNotNil: [ primaryPool flush ].
	1 flag: #todo. "ugly way to access host and port..."
	primaryPool := VOMongoSessionPool 
		host: repository members first first 
		port: repository members first second
		database: repository databaseName
		username: repository username
		password: repository password.
	primaryPool size: repository poolSize.