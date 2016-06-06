tests
test002DiscoverMembers

	repository := VOMongoRepository 
		database: 'rs-test' 
		members: #('localhost:27033').

	"Write operations fail on initial member since it's secondary, but the error is catched and primary member is discovered."
	repository save: VOTestCat new.
	self assert: repository primaryMember equals: 'localhost:27031' asMongoUrl.
	
	self 
		assert: repository replicaSetMembers asSet
		equals: {'localhost:27031' asMongoUrl. 'localhost:27032' asMongoUrl. 'localhost:27033' asMongoUrl} asSet.