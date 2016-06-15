accessing
newRepositoryOnAll

	^ VOMongoRepository 
		mongoUrls: self allMongoUrls
		database: self databaseName