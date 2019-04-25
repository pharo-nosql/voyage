private
basicLookupReplicaSetStatusIfFound: callbackBlock

	| mongo |
	knownMongoUrls do: [ :each | [[ 
		mongo := Mongo host: each host port: each port.
		mongo openWithTimeout: repository connectionTimeoutSeconds.
		^ callbackBlock value: mongo replicaSetStatus ]
			on: NetworkError "Unavailable member => skip"
			do: [ :error | 	resolver debugLog: each asString , '->' , error asString ]]
			ensure: [ mongo isOpen ifTrue: [ mongo close ]]]