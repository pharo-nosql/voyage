tests
test001CreateWithList

	client := VOMongoClient 
		database: 'rs-test' 
		members: #((localhost 27031) (localhost 27032) (localhost 27033)).
	
	client withDatabase: [ :db | db getCollection: 'col' ]