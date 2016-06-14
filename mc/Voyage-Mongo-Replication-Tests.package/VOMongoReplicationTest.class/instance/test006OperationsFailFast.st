tests
test006OperationsFailFast

	| timeToFail |
	repository := VOMongoRepository 
		mongoUrls: #('localhost:27031')
		database: 'rs-test'.

	repository save: VOTestCat new.
	
	"Don't tolerate a too many seconds wait"
	self stepDown: 'localhost:27031' asMongoUrl duringSeconds: 20.
	
	timeToFail := [
		self should: [ repository save: VOTestCat new ] raise: VOMongoConnectionError 
		] timeToRun.
	
	self
		assert: timeToFail <= 5 seconds
		description: timeToFail asString, ': too much time to signal error when there is no available mongo instance.'.