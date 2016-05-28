private
newPoolFor: aMember

	| pool |
	pool :=VOMongoSessionPool 
		host: aMember host
		port: aMember port
		database: databaseName
		username: ''
		password: ''.
	pool size: VOMongoRepository defaultPoolSize.
	^ pool