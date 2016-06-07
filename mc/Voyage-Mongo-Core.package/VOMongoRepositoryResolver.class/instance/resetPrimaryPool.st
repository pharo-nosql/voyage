accessing
resetPrimaryPool
	collections := Dictionary new.	
		
	"Assume primaryMember is up-to-date"
	primaryPool ifNotNil: [ primaryPool flush ].
	primaryPool := VOMongoSessionPool 
		host: primaryMember host 
		port: primaryMember port
		database: repository databaseName
		username: repository username 
		password: repository password.
	primaryPool size: repository poolSize.