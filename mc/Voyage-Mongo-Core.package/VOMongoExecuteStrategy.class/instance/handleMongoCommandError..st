private
handleMongoCommandError: aMongoCommandError

	resolver resetPool.
	^ self retryOrResignal: aMongoCommandError