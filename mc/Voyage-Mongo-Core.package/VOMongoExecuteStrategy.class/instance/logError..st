private
logError: error

	repository debugLog: error asString.
	Smalltalk
		logError: error messageText
		inContext: error signalerContext.
