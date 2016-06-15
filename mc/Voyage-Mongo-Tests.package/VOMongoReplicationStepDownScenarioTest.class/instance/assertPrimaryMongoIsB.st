running
assertPrimaryMongoIsB
	self 
		assert: repository primaryMongoUrl 
		equals: VOMongoReplicationTestResources new mongoUrlB