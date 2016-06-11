instance creation
host: hostString port: portNumber database: databaseString username: aUserName password: aPassword
	^ self
		mongoUrls: { 'mongodb://', hostString, ':', portNumber asString }
		database: databaseString
		username: aUserName
		password: aPassword