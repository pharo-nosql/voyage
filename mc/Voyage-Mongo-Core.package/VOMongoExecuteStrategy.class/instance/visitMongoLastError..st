private - visiting
visitMongoLastError: aMongoLastError

	resolver resetPool.
	^ self retryOrResignal: aMongoLastError.