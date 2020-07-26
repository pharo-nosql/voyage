instance creation
mongoUrls: aCollection database: databaseString
	^ self
		mongoUrls: aCollection
		database: databaseString
		username: ''
		password: ''