private replication
newReplicaSetRepositoryFor: primaryMember
	^ VOMongoReplicaSetRepository
		referenceRepository: repository
		host: primaryMember host
		port: primaryMember port