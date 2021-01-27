*Voyage-Mongo-Tests-Extensions
newRepositoryOn: mongoUrls

	^ (VOMongoRepository 
		mongoUrls: mongoUrls
		database: self databaseName)
		yourself
		