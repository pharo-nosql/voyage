accessing
returnToPool: aSession
	"Put aSession back to the sessions if wanted, or disconnect aSession if not already done"
	
	sessions size < self size 
		ifTrue: [sessions nextPutIfMissing: aSession]
		ifFalse: [self ensureDisconnected: aSession]