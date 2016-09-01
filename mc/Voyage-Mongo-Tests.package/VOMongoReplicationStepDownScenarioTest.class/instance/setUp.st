tests
setUp
	super setUp.
	
	repository := MongoReplicationTestResources newRepositoryOnC.
	repository debug: true.
