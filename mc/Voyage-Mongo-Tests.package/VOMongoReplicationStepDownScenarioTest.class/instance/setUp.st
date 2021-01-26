running
setUp
	MongoBasicReplicationTestResources waitTestingScenario.	
	repository := MongoBasicReplicationTestResources newRepositoryOnC.
	repository debug: true.
	1 second wait.
	super setUp.
