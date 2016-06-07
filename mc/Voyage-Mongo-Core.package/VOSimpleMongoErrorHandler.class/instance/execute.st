public
execute

	resolver debugLog: resolver primaryMember asString, '->execute ', blockClosure asString.

	^ [[[ blockClosure
		on: MongoCommandError
		do: [ :error | 
			resolver debugLog: error asString.
			self handleMongoCommandError: error ]]
		on: VOMongoWriteError 
		do: [ :error |
			resolver debugLog: error asString.
			self handleMongoWriteError: error ]]
		on: NetworkError, PrimitiveFailed
		do: [ :error |
			resolver debugLog: error asString.
			self handleConnectionError: error ]]
		on: BSONError
		do: [ :error |
			resolver debugLog: error asString.
			self handleBSONError: error ]
