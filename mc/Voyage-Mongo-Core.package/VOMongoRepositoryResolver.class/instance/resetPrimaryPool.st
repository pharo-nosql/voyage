accessing
resetPrimaryPool
	collections := Dictionary new.	
	
	"Assume primaryMember is up-to-date"
	primaryPool ifNotNil: [ primaryPool flush ].
	primaryPool := VOMongoSessionPool 
		host: primaryMongoUrl host 
		port: primaryMongoUrl port
		database: repository databaseName
		username: repository username 
		password: repository password.
	primaryPool size: repository poolSize.