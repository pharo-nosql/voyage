running
setUp
	super setUp.
	
	repository := VOMongoRepository database: 'updateIfCurrentTest'.