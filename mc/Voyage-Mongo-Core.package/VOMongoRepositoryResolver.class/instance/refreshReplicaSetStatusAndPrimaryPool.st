private replication
refreshReplicaSetStatusAndPrimaryPool
	
	self refreshReplicaSetStatusUntilHavePrimaryMember.
	
	self debugLog: ('new primary: ', primaryMember asString).
	
	"Use new primary member for pool"
	primaryPool ifNotNil: [ primaryPool flush ].
	primaryPool := VOMongoSessionPool 
		host: primaryMember host 
		port: primaryMember port
		database: repository databaseName
		username: repository username 
		password: repository password.
	primaryPool size: repository poolSize.