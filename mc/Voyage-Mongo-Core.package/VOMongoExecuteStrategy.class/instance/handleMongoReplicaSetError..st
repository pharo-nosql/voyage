private
handleMongoReplicaSetError: error

	resolver reset.
	^ self retryOrResignal: error