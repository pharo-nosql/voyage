instance creation
mongoUrls: aCollection database: databaseString username: aUserName password: aPassword
	^ self basicNew
		initializeMongoUrls: (aCollection collect: #asMongoUrl)
			database: databaseString
			username: aUserName
			password: aPassword;
		yourself