initialization
initialize 
	super initialize.

	mongoUrlResolver := VOMongoReplicationUrlResolver repository: repository.

	self reset.
