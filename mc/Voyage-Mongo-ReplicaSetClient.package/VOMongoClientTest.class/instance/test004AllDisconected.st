tests
test004AllDisconected

	client := VOMongoClient 
		database: 'rs-test' 
		members: #((localhost 27031) (localhost 27032) (localhost 27033)).

	1halt. 
	"
	Now run:
		./rs-stopAll.sh
	After some seconds, continue. It will loop until you restart mongod's:
		./rs-serve.sh
	"

	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
