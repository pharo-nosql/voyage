tests
testPrimaryStepsDownOn: block

	| mongo |
	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #('localhost:27033').

	"Normally it will use 27031 as primary, given the replica set configuration"
	block value.
	self assert: repository primaryMember equals: 'localhost:27031' asMongoUrl.

	"Now, step down current primary"
	self temporaryStepDown: 'localhost:27031' asMongoUrl seconds: 15.

	"It will use the 27032, the only possible primary (the 27033 is arbiter)"
	10 seconds wait.	
	block value.
	self assert: repository primaryMember equals: 'localhost:27032' asMongoUrl.


	"Now, wait a bit and then check it's up again."
	10 seconds wait.	
	block value.
	self assert: repository primaryMember equals: 'localhost:27031' asMongoUrl.
