initialization
initializeResolver
	self flag: #todo. "not nice"

	resolver := VOMongoReplicaSetRepositoryResolver repository: self.
	resolver isSupported
		ifFalse: [ resolver := VOMongoRepositoryResolver repository: self ]