tests
test004PrimaryStepsDown

	client := VOMongoClient 
		database: 'rs-test' 
		members: #((localhost 27033)).

	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27031.

	1halt. 
	"
	Now run:
		./rs-stepDown20s.sh
	After some seconds, continue:
	"

	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27032.

	1halt. 
	"
	Now, wait a bit and then check it's up again.
	"
	
	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27031.
