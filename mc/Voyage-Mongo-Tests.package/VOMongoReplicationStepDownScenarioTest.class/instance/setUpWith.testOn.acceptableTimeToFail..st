tests
setUpWith: setUpBlock testOn: block acceptableTimeToFail: acceptableTimeToFail

	"It will use A as primary, given the replica set configuration"
	self assertPrimaryMongoIsA.
	setUpBlock value.
	block value.
	self assertPrimaryMongoIsA.
	setUpBlock value.

	"Now, stop A and B will become primary."
	MongoReplicationTestResources signalStopA.
	1 minute wait.
	block value.
	self assertPrimaryMongoIsB.
	setUpBlock value.

	"Now, wait a bit and then check A is up again and the new primary (it has higher priority than B)."
	MongoReplicationTestResources continueAllServers.
	1 minute wait.

	block value.
	self assertPrimaryMongoIsA.
