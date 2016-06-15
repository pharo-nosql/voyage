accessing
newRepositoryOnB

	^ VOMongoRepository 
		mongoUrls: { self mongoUrlB }
		database: self databaseName