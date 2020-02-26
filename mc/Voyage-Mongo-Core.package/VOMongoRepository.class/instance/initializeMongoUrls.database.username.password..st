initialization
initializeMongoUrls: aCollection database: databaseString username: aUserName password: aPassword
	databaseName := databaseString.
	username := aUserName.
	password := aPassword.
	self initialize.
	
	self ensuringCurrentOnSave: false.
	self ensuringCurrentReferencesOnQueries: false.

	self readPreferenceForReadingOperations: MongoReadPreference newPrimaryPreferred.
	
	sdamClient := MongoClient withUrls: aCollection.
	sdamClient settings
		maxConnections: self poolSize;
		connectTimeout: self connectionTimeout;
		socketTimeout: self connectionTimeout.
	sdamClient start.
