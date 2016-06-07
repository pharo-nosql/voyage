tests
temporaryStepDown: aUrl seconds: aNumberOfSeconds

	| mongo |
	mongo := Mongo host: aUrl host port: aUrl port.
	mongo open.
	2 timesRepeat:[ [mongo admin command: { 'replSetStepDown' -> aNumberOfSeconds } asDictionary] 
		on: Error 
		do: [:e | (self class name, '>>temporaryStepDown:->', e asString) logCr. ]].
	mongo close.