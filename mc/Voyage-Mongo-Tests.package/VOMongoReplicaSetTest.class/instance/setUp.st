running
setUp
	super setUp.

	repository := VOMongoReplicaSet
		host: 'localhost'
		port: 27031
		database: 'Voyage-Tests'.