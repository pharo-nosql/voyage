private
handleConnectionError: error

	repository resetPool.
	^ self retryOrResignal: error