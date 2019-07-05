initialization
resetPool
	"Assume primaryMember is up-to-date"
	pool ifNotNil: [
		"VOMongoSessionPool>>#populate might run while we try to flush the
		pool. Make sure that 'new' sessions added to the old pool will be
		immediately disconnected instead of being leaked."
		pool
			size: 0;
			flush ].
	pool := VOMongoSessionPool
		host: self mongoUrlResolver primaryMongoUrl host 
		port: self mongoUrlResolver primaryMongoUrl port
		database: self databaseName
		username: self username 
		password: self password.
	pool size: self poolSize.
	pool connectionTimeout: self connectionTimeout.