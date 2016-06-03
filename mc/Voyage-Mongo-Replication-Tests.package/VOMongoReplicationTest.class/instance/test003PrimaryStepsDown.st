tests
test003PrimaryStepsDown

	| mongo |
	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #((localhost 27033)).

	repository save: VOTestCat new.
	self assert: repository primaryMember equals: #(localhost 27031).
	
1halt.

	"Now, step down current primary"
	mongo := Mongo host: 'localhost' port: 27031.
	mongo open.
	2 timesRepeat:[ [mongo admin command: { 'replSetStepDown' -> 15 } asDictionary] on: Error do: [:e | e logCr. ] ].
	mongo close.
	10 seconds wait.
	
2halt.

	repository save: VOTestCat new.
1 logCr.
	1 seconds wait.
	repository save: VOTestCat new.
2 logCr.
	1 seconds wait.
	repository save: VOTestCat new.
3 logCr.
	1 seconds wait.
	repository save: VOTestCat new.
	self assert: repository primaryMember equals: #(localhost 27032).


	"Now, wait a bit and then check it's up again."
	10 seconds wait.
	
	repository save: VOTestCat new.
	self assert: repository primaryMember equals: #(localhost 27031).
