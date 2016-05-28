tests
test002DiscoverMembers

	client := VOMongoClient 
		database: 'rs-test' 
		members: #((localhost 27033)).

	"Write operations fail on initial member since it's secondary, but the error is catched and primary member is discovered."
	collection := (client withDatabase: [ :db | db getCollection: 'col' ]).
	collection add: Dictionary new.
	self assert: collection database root port equals: 27031.
	
	self 
		assert: client members asSet
		equals: #((localhost 27031) (localhost 27032) (localhost 27033)) asSet.