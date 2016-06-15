running
assertPrimaryMongoIsA
	self 
		assert: repository primaryMongoUrl 
		equals: VOMongoReplicationTestResources new mongoUrlA