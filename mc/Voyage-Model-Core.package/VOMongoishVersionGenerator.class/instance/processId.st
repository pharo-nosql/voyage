private
processId
	OSPlatform current isWindows 
		ifTrue: [ ^ self getCurrentProcessId ].
	^ self getpid