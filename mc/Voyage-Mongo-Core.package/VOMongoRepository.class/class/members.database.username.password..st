instance creation
members: aCollection database: databaseString username: aUserName password: aPassword
	^self basicNew 
		initializeMembers: (aCollection collect: #asMongoUrl)
			database: databaseString
			username: aUserName
			password: aPassword;
		yourself