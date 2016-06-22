private replication
lookupReplicaSetStatus

	| timeout |
	timeout := DateAndTime now + repository replicaSetLookupTimeout.
	self debugLog: 'lookup for an available mongo'.

	[ DateAndTime now < timeout ] whileTrue: [ 
		adminMongoByUrl valuesDo: [ :each |
			each isAvailable ifTrue: [ 
				[ ^ each replicaSetStatus ]
					on: NetworkError 
					do: [:error | self debugLog: each asString, '->', error asString ] 
					"Unavailable member => skip" 
		]]].

	self debugLog: 'no available mongo'.
	^ VOMongoError signal