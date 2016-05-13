private recovery
execute: aBlock recoverWith: recoveryBlock retries: retriesLeft
	aBlock 
		on: NetworkError, BSONError, PrimitiveFailed, ConnectionClosed, VOMongoConnectionError
		do: [ :e | 
			recoveryBlock value.
			
			((self isRetryError: e) and: [ retriesLeft > 0 ])
				ifTrue: [ self execute: aBlock recoverWith: recoveryBlock retries: retriesLeft - 1 ]
				ifFalse: [ e resignalAs: VOMongoConnectionError new] ]