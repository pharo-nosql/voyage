private replication
basicLookupReplicaSetStatusIfFound: callbackBlock

	| mongo |
	allMongoUrls do: [ :each | [[ 
		mongo := Mongo host: each host port: each port.
		mongo open.
		^ callbackBlock value: mongo replicaSetStatus ]
			on: NetworkError "Unavailable member => skip"
			do: [ :error | 	self debugLog: each asString , '->' , error asString ]]
			ensure: [ mongo isOpen ifTrue: [ mongo close ]]]