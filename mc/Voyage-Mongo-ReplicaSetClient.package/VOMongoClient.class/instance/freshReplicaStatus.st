private
freshReplicaStatus
	| freshReplicaStatus |
	freshReplicaStatus := self adminMongoDo: [ :mongo | mongo replicaSetStatus ].
	members := (freshReplicaStatus members
		collect: [ :each | {each host. each port} ]) asArray.
	self refreshAdminMongos.
	^ freshReplicaStatus