instance creation
members: aCollection database: databaseString username: aUserName password: aPassword
	^self basicNew 
		initializeMembers: aCollection
			database: databaseString
			username: aUserName
			password: aPassword;
		yourself