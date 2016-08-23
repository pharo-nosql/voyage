testing
allTestSelectors
	"Workaround ot avoid running tests when replication testing scenario isn't available."

	^ MongoReplicationTestResources isTestScenarioAvailable
		ifTrue: [ super allTestSelectors ]
		ifFalse: [ #() ]