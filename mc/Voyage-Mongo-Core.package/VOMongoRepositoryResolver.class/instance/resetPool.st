accessing
resetPool
	"Assume primaryMember is up-to-date"
	pool ifNotNil: [ 
		pool 
			size: 0;
			flush ].
	pool := VOMongoSessionPool
		host: self mongoUrlResolver primaryMongoUrl host 
		port: self mongoUrlResolver primaryMongoUrl port
		database: repository databaseName
		username: repository username 
		password: repository password.
	pool size: repository poolSize.
	pool connectionTimeoutSeconds: repository connectionTimeoutSeconds.