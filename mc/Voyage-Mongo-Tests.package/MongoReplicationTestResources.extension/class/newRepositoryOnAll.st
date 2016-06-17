*Voyage-Mongo-Tests-Extensions
newRepositoryOnAll

	^ VOMongoRepository 
		mongoUrls: self allMongoUrls
		database: self databaseName