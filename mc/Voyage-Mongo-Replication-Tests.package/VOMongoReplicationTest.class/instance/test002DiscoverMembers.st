tests
test002DiscoverMembers

	repository := VOMongoRepository 
		mongoUrls: #('localhost:27033')
		database: 'rs-test'.

	"Write operations fail on initial member since it's secondary, but the error is catched and primary member is discovered."
	repository save: VOTestCat new.
	self assert: repository primaryMongoUrl equals: 'localhost:27031' asMongoUrl.
	
	self 
		assert: repository allMongoUrls asSet
		equals: {'localhost:27031' asMongoUrl. 'localhost:27032' asMongoUrl. 'localhost:27033' asMongoUrl} asSet.