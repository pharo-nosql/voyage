instance creation
database: databaseString members: aCollection 
	^self 
		members: aCollection 
		database: databaseString 
		username: '' 
		password: ''