accessing
mongoUrlResolverClass
	^ mongoUrlResolverClass ifNil: [ mongoUrlResolverClass := VOMongoNoReplicationUrlResolver ]