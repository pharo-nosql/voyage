private
ensureDisconnected: aSession
	^aSession isOpen ifTrue: [aSession close]