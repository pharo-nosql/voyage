private
handleMongoLastError: aMongoLastError

	resolver resetPool.
	^ self retryOrResignal: aMongoLastError.