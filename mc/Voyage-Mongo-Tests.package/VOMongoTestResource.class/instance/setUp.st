running
setUp
	super setUp.
	repository := VOMongoRepository 
		host: self class mongoHost
		database: 'Voyage-Tests'.