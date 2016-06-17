running
tearDown
	"Workaround: Override inherited behavior when testing scenario is not available."
	MongoReplicationTestResources isTestScenarioAvailable ifFalse: [ ^self ].

	super tearDown.