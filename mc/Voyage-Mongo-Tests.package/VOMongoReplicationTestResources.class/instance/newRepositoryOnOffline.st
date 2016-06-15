accessing
newRepositoryOnOffline

	^ VOMongoRepository 
		mongoUrls: { self mongoUrlOffline }
		database: self databaseName