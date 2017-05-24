private
handleConnectionError: error

	resolver reset.
	^ self retryOrResignal: error