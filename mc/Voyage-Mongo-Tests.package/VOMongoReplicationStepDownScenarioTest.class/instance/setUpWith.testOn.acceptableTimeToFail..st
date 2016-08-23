tests
setUpWith: setUpBlock testOn: block acceptableTimeToFail: acceptableTimeToFail

	"It will use A as primary, given the replica set configuration"
	| timeToFail |
	self assertPrimaryMongoIsA.
	setUpBlock value.
	block value.
	self assertPrimaryMongoIsA.
	setUpBlock value.

	"Now, step down member A, current primary."
	MongoReplicationTestResources stepDownA: 15 seconds.

	"At this point, any operation should fail since there is no primary member until elections are performed."	
	1 second wait.
	self assertPrimaryMongoIsA.
	timeToFail := [self should: block raise: VOMongoConnectionError] timeToRun.	
	self assertPrimaryMongoIsC. "There is no primary then repository chooses the initial url, used in #setUp."
	self
		assert: timeToFail <= acceptableTimeToFail
		description: timeToFail asString, ': too much time to signal error when there is no available mongo instance.'.

	"Member B is elected as primary"
	14 seconds wait.
	self assertPrimaryMongoIsC.
	block value.
	self assertPrimaryMongoIsB.
	setUpBlock value.

	"Now, wait a bit and then check A is up again and the new primary (it has higher priority than B)."
	10 seconds wait.
	self assertPrimaryMongoIsB.
	block value.
	self assertPrimaryMongoIsA.
