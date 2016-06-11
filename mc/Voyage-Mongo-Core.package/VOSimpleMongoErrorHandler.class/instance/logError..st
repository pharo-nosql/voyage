private
logError: error

	handledErrorsByTimestamp at: DateAndTime now put: error.
	resolver debugLog: error asString.
	Smalltalk
		logError: error messageText
		inContext: error signalerContext.
