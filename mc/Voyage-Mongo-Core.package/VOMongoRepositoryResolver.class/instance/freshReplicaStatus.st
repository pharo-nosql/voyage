private replication
freshReplicaStatus
	| freshReplicaStatus |
	freshReplicaStatus := self adminMongoDo: [ :mongo | mongo replicaSetStatus ].
	replicaSetMembers := (freshReplicaStatus members
		collect: [ :each | {each host. each port} ]) asArray.
	self refreshAdminMongos.
	^ freshReplicaStatus