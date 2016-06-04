private
execute: aBlockClosure

	self debugLog: 'execute ', aBlockClosure asString, ' in ', primaryMember asString.

	^ [ aBlockClosure
		on: MongoCommandError 
		do: [ :error | 
			self debugLog: error asString, ' catched as MongoCommandError'.

			(error isNotMaster or: [ error isNotMasterAndSlaveOkIsFalse ])
				ifFalse: [ error signal ]
				ifTrue: [ 
					self refreshReplicaSetStatusAndPrimaryPool.
					self execute: aBlockClosure. 
					self flag: #todo. "Infinite retry!"
					]]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self debugLog: error asString, ' catched as NetworkError, PrimitiveFailed'.
			primaryPool flush.
			self execute: aBlockClosure ]
