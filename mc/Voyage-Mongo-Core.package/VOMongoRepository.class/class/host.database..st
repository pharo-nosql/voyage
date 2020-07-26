instance creation
host: hostString database: databaseString
	^ self
		host: hostString
		port: self defaultPort
		database: databaseString