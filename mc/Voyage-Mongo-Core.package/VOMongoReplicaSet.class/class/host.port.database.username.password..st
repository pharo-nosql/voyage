instance creation
host: hostString port: portNumber database: databaseString username: aUserName password: aPassword
	^self basicNew 
		initializeHost: hostString 
			port: portNumber 
			database: databaseString
			username: aUserName
			password: aPassword
		yourself