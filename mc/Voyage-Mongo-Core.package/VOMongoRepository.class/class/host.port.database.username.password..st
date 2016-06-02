instance creation
host: hostString port: portNumber database: databaseString username: aUserName password: aPassword
	^ self
		members: {{ hostString. portNumber }}
		database: databaseString
		username: aUserName
		password: aPassword