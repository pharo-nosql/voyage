private
logError: error

	resolver debugLog: error asString.
	Smalltalk
		logError: error messageText
		inContext: error signalerContext.
