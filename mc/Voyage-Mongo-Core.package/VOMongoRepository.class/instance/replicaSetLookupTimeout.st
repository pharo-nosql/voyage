accessing
replicaSetLookupTimeout
	^ replicaSetLookupTimeout ifNil: [ replicaSetLookupTimeout := self class defaultReplicaSetLookupTimeout ]