instance creation
host: hostString port: portNumber database: databaseString
	^ self
		host: hostString
		port: portNumber
		database: databaseString
		username: nil
		password: nil