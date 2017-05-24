accessing
enableReplication 
	self mongoUrlResolverClass: VOMongoReplicationUrlResolver.
	resolver resetPool.