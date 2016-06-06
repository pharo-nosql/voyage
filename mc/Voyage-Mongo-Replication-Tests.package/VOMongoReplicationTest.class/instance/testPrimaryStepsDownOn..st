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
	mongo := Mongo host: 'localhost' port: 27031.
	mongo open.
	2 timesRepeat:[ [mongo admin command: { 'replSetStepDown' -> 15 } asDictionary] on: Error do: [:e | e logCr. ] ].
	mongo close.

	"It will use the 27032, the only possible primary (the 27033 is arbiter)"
	10 seconds wait.	
	block value.
	self assert: repository primaryMember equals: 'localhost:27032' asMongoUrl.


	"Now, wait a bit and then check it's up again."
	10 seconds wait.	
	block value.
	self assert: repository primaryMember equals: 'localhost:27031' asMongoUrl.
