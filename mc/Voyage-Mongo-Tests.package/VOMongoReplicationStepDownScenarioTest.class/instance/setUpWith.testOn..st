tests
setUpWith: setUpBlock testOn: block

	"It will use A as primary, given the replica set configuration"
	self assertPrimaryMongoIsA.
	setUpBlock value.
	block value.
	self assertPrimaryMongoIsA.
	setUpBlock value.
	5 seconds wait. "Ensure setUpBlock had effect on the replica set"

	"Now, stop A and B will become primary."
	MongoReplicationTestResources signalStopA.
	45 seconds wait.
	block value.
	self assertPrimaryMongoIsB.
	setUpBlock value.

	"Now, wait a bit and then check A is up again and the new primary (it has higher priority than B)."
	MongoReplicationTestResources continueAllServers.
	45 seconds wait.
	block value.
	self assertPrimaryMongoIsA.
