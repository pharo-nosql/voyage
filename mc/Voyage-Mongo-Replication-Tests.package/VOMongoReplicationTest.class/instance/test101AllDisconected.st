tests
test101AllDisconected

	| normalDuration withoutPrimaryDuration |
	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #('localhost:27031').

	normalDuration := [repository save: VOTestCat new] timeToRun.
	
	"Don't tolerate a too many seconds wait"
	self stepDown: 'localhost:27031' asMongoUrl duringSeconds: 20.
	
	withoutPrimaryDuration := [
		self should: [ repository save: VOTestCat new ] raise: VOMongoError 
		] timeToRun.
	
	self
		assert: withoutPrimaryDuration asMilliSeconds <= (3 * normalDuration asMilliSeconds)
		description: 'It should not takke too long to signal error when there is no available mongo instance.'