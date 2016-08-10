private - visiting
visitMongoCommandError: aMongoCommandError

	resolver resetPool.
	^ self retryOrResignal: aMongoCommandError