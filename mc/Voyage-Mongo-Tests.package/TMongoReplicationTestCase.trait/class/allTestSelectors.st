testing
allTestSelectors
	"Workaround ot avoid running tests when replication testing scenario isn't available."

	self flag: #todo.
	"Disabled as the method is not present"
	^ {}"MongoReplicationTestResources isTestScenarioAvailable
		ifTrue: [ super allTestSelectors ]
		ifFalse: [ #() ]"