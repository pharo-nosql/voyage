accessing
withPrimaryDatabase: aBlockClosure 
	^ [[self cachedPrimaryPool withDatabase: aBlockClosure] 
		on: MongoCommandError 
		do: [ :error | 
			error isNotMaster 
				ifFalse: [ error signal ]
				ifTrue: [ 
					cachedPrimaryPool := nil.
					cachedReplicaSetStatus := nil.
					
					self debugLog: error.
					self withPrimaryDatabase: aBlockClosure ]]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self debugLog: error.
			self cachedPrimaryPool flush.
			self withPrimaryDatabase: aBlockClosure ]