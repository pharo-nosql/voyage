private
ensureConnected: aSession
	^ aSession isOpen 
		ifFalse: [ aSession open ]