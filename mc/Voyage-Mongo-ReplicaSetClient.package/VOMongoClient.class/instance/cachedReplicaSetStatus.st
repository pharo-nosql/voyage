private
cachedReplicaSetStatus
	^ cachedReplicaSetStatus ifNil: [
		cachedReplicaSetStatus := self freshReplicaStatus ]