testing
shouldInheritSelectors 
	"Workaround ot avoid running tests when replication testing scenario isn't available."

	^ MongoReplicationTestResources isTestScenarioAvailable