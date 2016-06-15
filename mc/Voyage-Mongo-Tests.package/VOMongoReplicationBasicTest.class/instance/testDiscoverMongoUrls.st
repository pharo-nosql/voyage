tests
testDiscoverMongoUrls
	"The repository can discover replica-set mongodb connections that were not specified explicitely in the initial list of mongoUrls."

	repository := VOMongoReplicationTestResources new newRepositoryOnB.

	"Write operations fail on initial member since it's secondary, but the error is catched and primary member is discovered."
	repository save: VOTestCat new.
	self assert: repository primaryMongoUrl equals: VOMongoReplicationTestResources new mongoUrlA.
	
	self 
		assert: repository allMongoUrls asSet
		equals: VOMongoReplicationTestResources new allMongoUrls asSet.