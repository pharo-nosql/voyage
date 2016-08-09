private
handleConnectionError: error

	resolver resetPool.
	^ self retryOrResignal: error