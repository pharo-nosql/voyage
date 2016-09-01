running
setUp
	super setUp.

	"Simplest scenario: Specify primary member in the replica set."
	repository := MongoReplicationTestResources newRepositoryOnA