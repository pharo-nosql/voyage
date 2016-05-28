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
					
					self logRecoveringFrom: error.
					self withPrimaryDatabase: aBlockClosure ]]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self logRecoveringFrom: error.
			self cachedPrimaryPool flush.
			self withPrimaryDatabase: aBlockClosure ]