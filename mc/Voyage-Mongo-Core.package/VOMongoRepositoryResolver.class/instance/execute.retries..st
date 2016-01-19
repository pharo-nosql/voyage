private
execute: aBlock retries: retriesLeft
	aBlock 
		on: NetworkError, BSONError, PrimitiveFailed, ConnectionClosed, VOMongoConnectionError
		do: [ :e | 
			self recoverFromError: e.
			((self isRetryError: e) and: [ retriesLeft > 0 ])
				ifTrue: [ self execute: aBlock retries: retriesLeft - 1 ]
				ifFalse: [ e resignalAs: VOMongoConnectionError new] ]