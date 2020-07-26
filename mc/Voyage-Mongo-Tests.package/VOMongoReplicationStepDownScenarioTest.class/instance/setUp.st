running
setUp
	MongoReplicationTestResources waitTestingScenario.	
	repository := MongoReplicationTestResources newRepositoryOnC.
	repository debug: true.
	1 second wait.
	super setUp.
