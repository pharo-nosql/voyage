instance creation
host: hostString port: portNumber database: databaseString username: aUsername password: aPassword
	^self basicNew
		initializeHost: hostString 
			port: portNumber 
			database: databaseString
			username: aUsername
			password: aPassword;
		yourself