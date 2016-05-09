accessing
reset
	collections := Dictionary new.
	pool ifNotNil: [ pool flush ].
	pool := VOMongoSessionPool 
		host: repository host 
		port: repository port 
		database: repository databaseName
		username: repository username
		password: repository password.
	pool size: repository poolSize.