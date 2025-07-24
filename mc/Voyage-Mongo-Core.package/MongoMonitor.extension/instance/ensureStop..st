*Voyage-Mongo-Core
ensureStop: timeout
	
	self isRunning 
		ifTrue: [ ^ self stop waitForCompletion: timeout ].
	
	stopCallbacks ifNotNil: [ ^ self stop ].

	"I have been never started... lets ensure I am not in the service manager"	
	stopRequested := true.
	TKTConfiguration serviceManager removeService: self