accessing
newRepositoryOnA

	^ VOMongoRepository 
		mongoUrls: { self mongoUrlA }
		database: self databaseName