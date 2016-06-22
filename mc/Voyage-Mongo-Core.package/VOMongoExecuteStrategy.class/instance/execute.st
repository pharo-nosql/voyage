public
execute

	^ blockClosure
		on: Error
		do: [ :error | 
			self logError: error.

			(error isKindOf: MongoCommandError)
				ifTrue: [ ^ self handleMongoCommandError: error ].

			(error isKindOf: VOMongoReplicaSetError)
				ifTrue: [ ^ self handleMongoReplicaSetError: error ].

			(error isKindOf: BSONError)
				ifTrue: [ ^ self handleBSONError: error ].

			((error isKindOf: NetworkError) or: [ error isKindOf: PrimitiveFailed ])
				ifTrue: [ ^ self handleConnectionError: error ].

			^ self handleGenericError: error ]
