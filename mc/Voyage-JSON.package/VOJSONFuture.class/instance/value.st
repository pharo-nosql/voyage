accessing
value 
	(process == Processor activeProcess) ifFalse: [ 
		semaphore wait ].
	^ self basicValue 