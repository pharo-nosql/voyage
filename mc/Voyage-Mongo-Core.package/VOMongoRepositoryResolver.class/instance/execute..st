private
execute: aBlockClosure

	^ [ aBlockClosure
		on: MongoCommandError 
		do: [ :error | 
			self debugLog: error.

			error isNotMaster 
				ifFalse: [ error signal ]
				ifTrue: [ 
					self refreshReplicaSetStatusAndPrimaryPool.					
					self execute: aBlockClosure. 
					self flag: #todo. "Infinite retry!"
					]]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self debugLog: error.
			primaryPool flush.
			self execute: aBlockClosure ]
