tests
testOn: aBlock
	"Voyage operations shouldn't wait too many seconds to signal error with replica-set issues."

	| timeToFail |
	"It will use A as primary, given the replica set configuration"
	self shouldnt: [ repository save: VOTestCat new ] raise: VOMongoConnectionError.
	self assertPrimaryMongoIsA.
	
	MongoReplicationTestResources stepDownA: 15 seconds.
	1 second wait.

	"Any operation should fail since There is no primary member until elections are performed."	
	timeToFail := [
		self should: aBlock raise: VOMongoConnectionError 
		] timeToRun.

	"Wait to allow mongo A be elected back as primary (so scenario is ready for next test)"
	20 seconds wait.	
	
	self
		assert: timeToFail <= self acceptableTimeToFail
		description: timeToFail asString, ': too much time to signal error when there is no available mongo instance.'.