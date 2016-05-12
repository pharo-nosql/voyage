private
newRepositoryFor: replicaSetMember
	| newRepository |
	"Instantiate"
	newRepository := 
		VOMongoRepository
			host: replicaSetMember host
			port: replicaSetMember port 
			database: databaseName
			username: username
			password: password.
	
	"Transfer other options"
	newRepository versionGenerator: versionGenerator.
	
	^newRepository