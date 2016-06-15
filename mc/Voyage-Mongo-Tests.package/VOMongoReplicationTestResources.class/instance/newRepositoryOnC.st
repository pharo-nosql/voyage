accessing
newRepositoryOnC

	^ VOMongoRepository 
		mongoUrls: { self mongoUrlC }
		database: self databaseName