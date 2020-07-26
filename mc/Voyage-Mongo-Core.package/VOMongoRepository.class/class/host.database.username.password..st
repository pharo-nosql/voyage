instance creation
host: hostString database: databaseString username: aUserName password: aPassword
	^ self
		host: hostString
		port: self defaultPort
		database: databaseString
		username: aUserName
		password: aPassword