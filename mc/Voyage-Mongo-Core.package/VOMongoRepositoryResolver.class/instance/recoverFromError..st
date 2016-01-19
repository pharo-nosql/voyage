private recovery
recoverFromError: anError 
	Smalltalk 
		logError: anError messageText
		inContext: anError signalerContext.
	self reset. 