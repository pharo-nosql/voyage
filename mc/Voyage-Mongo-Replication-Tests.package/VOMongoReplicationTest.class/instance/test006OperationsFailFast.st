tests
test006OperationsFailFast

	| timeToFail |
	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #('localhost:27031').

	repository save: VOTestCat new.
	
	"Don't tolerate a too many seconds wait"
	self stepDown: 'localhost:27031' asMongoUrl duringSeconds: 20.
	
	timeToFail := [
		self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError 
		] timeToRun.
	
	self
		assert: timeToFail <= 7 seconds
		description: 'It should not take too long to signal error when there is no available mongo instance.'