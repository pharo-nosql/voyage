private
execute: aBlockClosure

	^ [aBlockClosure
		on: MongoCommandError 
		do: [ :error | 
			error isNotMaster 
				ifFalse: [ error signal ]
				ifTrue: [ 
					self refreshReplicaSetStatusAndPrimaryPool.
					
					self logRecoveringFrom: error.
					self execute: aBlockClosure. 
					self flag: #todo. "Infinite retry!"
					
					]]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self logRecoveringFrom: error.
			primaryPool flush.
			self execute: aBlockClosure ]
