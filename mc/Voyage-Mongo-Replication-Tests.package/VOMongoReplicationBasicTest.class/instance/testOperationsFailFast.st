tests
testOperationsFailFast
	"Insert/Update/Query operations shouldn't wait too many seconds to signal error"

	| timeToFail |
	repository := VOMongoReplicationTestResources new newRepositoryOnA.

	repository save: VOTestCat new.
	
	VOMongoReplicationTestResources new stepDownA: 15 seconds.
	
	timeToFail := [
		self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError 
		] timeToRun.
	
	self
		assert: timeToFail <= 5 seconds
		description: timeToFail asString, ': too much time to signal error when there is no available mongo instance.'.