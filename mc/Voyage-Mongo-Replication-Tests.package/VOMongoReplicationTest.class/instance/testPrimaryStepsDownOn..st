tests
testPrimaryStepsDownOn: block

	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #('localhost:27033').

	"Normally it will use 27031 as primary, given the replica set configuration"
	'--1--' logCr.
	block value.
	self assert: repository primaryMongoUrl equals: 'localhost:27031' asMongoUrl.

	"Now, step down current primary"
	self stepDown: 'localhost:27031' asMongoUrl duringSeconds: 15.

	"It will use the 27032, the only possible primary (the 27033 is arbiter)"
	15 seconds wait.
	'--2--' logCr.
	block value.
	self assert: repository primaryMongoUrl equals: 'localhost:27032' asMongoUrl.


	"Now, wait a bit and then check it's up again."
	12 seconds wait.	
	'--3--' logCr.
	block value.
	self assert: repository primaryMongoUrl equals: 'localhost:27031' asMongoUrl.
