instance creation
database: databaseString
	^ self
		host: self defaultHost
		port: self defaultPort
		database: databaseString