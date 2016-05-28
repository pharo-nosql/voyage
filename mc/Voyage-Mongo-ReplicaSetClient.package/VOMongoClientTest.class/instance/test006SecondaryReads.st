tests
test006SecondaryReads

	| pool results |
	pool := VOMongoSessionPool 
		host: 'localhost' 
		port: 27033
		database: 'rs-test'
		username: ''
		password: ''.

	results := LinkedList new.
	pool withDatabase: [ :db | 
		db query: (
			MongoQuery new
				flags: QueryOperation flagSlaveOk;  "<------------- NEW"
				collection: (MongoCollection database: db name: 'pepe');
				doBlock: [:each | results add: each ];
				yourself) ].
	
	self assert: results isCollection 