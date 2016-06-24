initialization
initialize 
	super initialize.

	mongoUrlResolver := VOMongoReplicationUrlResolver repository: repository resolver: self.

	self reset.
