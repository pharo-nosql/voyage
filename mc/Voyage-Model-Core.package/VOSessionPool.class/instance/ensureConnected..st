private
ensureConnected: aSession
	aSession isOpen ifTrue: [ ^ self ]. 
	aSession openWithTimeout: connectionTimeout