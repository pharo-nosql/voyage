*Voyage-Mongo-Tests-Extensions
newRepositoryOnOffline

	^ VOMongoRepository 
		mongoUrls: { self mongoUrlOffline }
		database: self databaseName