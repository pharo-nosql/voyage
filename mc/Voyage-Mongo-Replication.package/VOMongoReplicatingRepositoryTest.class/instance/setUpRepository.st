running
setUpRepository

	repository := VOMongoReplicatingRepository 
		host: self class mongoHost
		database: 'Voyage-Tests'.
	repository debug: true.
	replicationRepository := VOMongoRepository 
		host: self class mongoHost
		database: 'Voyage-Tests-Replication'.
	repository replicationRepository: replicationRepository.
	replicationRepository debug: true.