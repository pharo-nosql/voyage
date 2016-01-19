instance creation
host: hostString port: portNumber database: databaseString
	^self 
		host: hostString 
		port: self defaultPort
		database: databaseString
		username: nil 
		password: nil
		