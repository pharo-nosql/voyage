tests
expectedFailures
	"Workaround: make tests optional, so we do not force everybody set up the replication testing scenario."
	
	^ super expectedFailures, (MongoReplicationTestResources isTestScenarioAvailable 
		ifFalse: [ self class allTestSelectors ]
		ifTrue: [ #() ])