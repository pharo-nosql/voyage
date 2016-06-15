private
handleConnectionError: error

	resolver resetPrimaryPool.
	^ self retryOrResignal: error