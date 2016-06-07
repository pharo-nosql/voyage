private replication
refreshReplicaSetStatusAndPrimaryPool
	
	[self refreshReplicaSetStatusUntilHavePrimaryMember]
		on: MongoCommandError 
		do: [:error |
			self debugLog: error.
			error isNotRunningWithReplSet ifTrue: [
				primaryMember := repository members first
		]].
	
	self debugLog: primaryMember asString, '->new primary'.
	
	"Use new primary member for pool"
	primaryPool ifNotNil: [ primaryPool flush ].
	primaryPool := VOMongoSessionPool 
		host: primaryMember host 
		port: primaryMember port
		database: repository databaseName
		username: repository username 
		password: repository password.
	primaryPool size: repository poolSize.