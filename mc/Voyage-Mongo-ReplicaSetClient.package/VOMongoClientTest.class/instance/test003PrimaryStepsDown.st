tests
test003PrimaryStepsDown

	| mongo |
	client := VOMongoClient 
		database: 'rs-test' 
		members: #((localhost 27033)).

	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27031.

	"Now, step down current primary"
	mongo := Mongo host: 'localhost' port: 27031.
	mongo open.
	2 timesRepeat:[ [mongo admin command: { 'replSetStepDown' -> 15 } asDictionary] on: Error do: [:e | e logCr. ] ].
	mongo close.
	10 seconds wait.

	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27032.

	"Now, wait a bit and then check it's up again."
	10 seconds wait.
	
	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27031.
