private
ensureConnected: aSession
	^ aSession isOpen 
		ifFalse: [ aSession openWithTimeout: connectionTimeout ]