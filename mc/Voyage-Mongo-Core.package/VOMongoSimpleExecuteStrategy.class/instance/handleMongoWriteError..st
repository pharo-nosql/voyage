private
handleMongoWriteError: error

	resolver reset.
	^ self retryOrResignal: error