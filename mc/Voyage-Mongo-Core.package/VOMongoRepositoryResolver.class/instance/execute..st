private
execute: aBlockClosure

	self debugLog: 'execute ', aBlockClosure asString, ' in ', primaryMember asString.

	^ [[ aBlockClosure
		on: MongoCommandError
		do: [ :error | 
			self debugLog: error asString.

			(error isNotMaster or: [ error isNotMasterAndSlaveOkIsFalse ])
				ifFalse: [ error signal ]
				ifTrue: [ 
					self refreshReplicaSetStatusAndPrimaryPool.
					self execute: aBlockClosure. 
					]]]
		on: VOMongoWriteError 
		do: [ :error |
			self debugLog: error asString.
			self refreshReplicaSetStatusAndPrimaryPool.
			self execute: aBlockClosure. 
		]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self debugLog: error asString.
			primaryPool flush.
			self execute: aBlockClosure ]
