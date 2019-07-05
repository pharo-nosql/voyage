private
basicLookupReplicaSetStatusIfFound: callbackBlock

	| mongo |
	knownMongoUrls do: [ :each | [[ 
		mongo := Mongo host: each host port: each port.
		mongo openWithTimeout: repository connectionTimeout.
		^ callbackBlock value: mongo replicaSetStatus ]
			on: NetworkError "Unavailable member => skip"
			do: [ :error | 	repository debugLog: each asString , '->' , error asString ]]
			ensure: [ mongo isOpen ifTrue: [ mongo close ]]]