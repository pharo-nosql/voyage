accessing
resetPool
	"Assume primaryMember is up-to-date"
	primaryPool ifNotNil: [ primaryPool flush ].
	primaryPool := VOMongoSessionPool
		host: self mongoUrlResolver primaryMongoUrl host 
		port: self mongoUrlResolver primaryMongoUrl port
		database: repository databaseName
		username: repository username 
		password: repository password.
	primaryPool size: repository poolSize.