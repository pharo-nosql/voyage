private
execute: aBlockClosure

	self debugLog: primaryMember asString, '->execute ', aBlockClosure asString.

	^ [[ aBlockClosure
		on: MongoCommandError
		do: [ :error | 
			self debugLog: error asString.

			(error isNotMaster or: [ error isNotMasterAndSlaveOkIsFalse ])
				ifFalse: [ error signal ]
				ifTrue: [ 
					self reset.
					self execute: aBlockClosure. 
			]]]
		on: VOMongoWriteError 
		do: [ :error |
			self debugLog: error asString.
			self reset.
			self execute: aBlockClosure. 
			]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			self debugLog: error asString.
			primaryPool flush.
			"todo: also clean collections"
			self execute: aBlockClosure ]
