private
freshReplicaStatus
	| freshReplicaStatus |
	freshReplicaStatus := self withAvailableAdminMongo: [ :mongo | mongo replicaSetStatus ].
	members := (freshReplicaStatus members
		collect: [ :each | {each host. each port} ]) asArray.
	self refreshAdminMongos.
	^ freshReplicaStatus