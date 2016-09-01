running
setUp
	super setUp.

	"Note that `mongo B` is a secondary member, then the repository must figure out this fact, and discover the primary member in the replica set."
	repository := MongoReplicationTestResources newRepositoryOnB.