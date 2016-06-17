testing
testSelectors
	"Workaround ot avoid running tests when replication testing scenario isn't available."

	^ MongoReplicationTestResources isTestScenarioAvailable
		ifTrue: [ super testSelectors ]
		ifFalse: [ #() ]