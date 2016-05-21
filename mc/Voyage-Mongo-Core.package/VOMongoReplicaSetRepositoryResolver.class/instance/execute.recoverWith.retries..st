private recovery
execute: aBlock recoverWith: recoveryBlock retries: retriesLeft
	aBlock 
		on: VOMongoConnectionError, MongoCommandError
		do: [ :e | 
			recoveryBlock value.

			retriesLeft > 0
				ifTrue: [ self execute: aBlock recoverWith: recoveryBlock retries: retriesLeft - 1 ]
				ifFalse: [ e resignalAs: VOMongoConnectionError new] ]