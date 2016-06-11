tests
testPrimaryStepsDownOn: block

	repository := VOMongoRepository 
		mongoUrls: #('localhost:27033')
		database: 'rs-test'.

	"Normally it will use 27031 as primary, given the replica set configuration"
	block value.
	self assert: repository primaryMongoUrl equals: 'localhost:27031' asMongoUrl.

	"Now, step down current primary"
	self stepDown: 'localhost:27031' asMongoUrl duringSeconds: 15.

	"It will use the 27032, the only possible primary (the 27033 is arbiter)"
	16 seconds wait.	
	block value.
	self assert: repository primaryMongoUrl equals: 'localhost:27032' asMongoUrl.


	"Now, wait a bit and then check it's up again."
	10 seconds wait.	
	block value.
	self assert: repository primaryMongoUrl equals: 'localhost:27031' asMongoUrl.
