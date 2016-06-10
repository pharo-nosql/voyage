private
logError: error

	handledErrorsByTimestamp at: DateAndTime now put: error.
	resolver debugLog: 'execute(retriesLeft=', retriesLeft asString, ')->', error asString.
	Smalltalk
		logError: error messageText
		inContext: error signalerContext.
