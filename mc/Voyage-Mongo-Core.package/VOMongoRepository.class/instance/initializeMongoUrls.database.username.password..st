initialization
initializeMongoUrls: aCollection database: databaseString username: aUserName password: aPassword
	mongoUrls := aCollection.
	databaseName := databaseString.
	username := aUserName.
	password := aPassword.
	self initialize