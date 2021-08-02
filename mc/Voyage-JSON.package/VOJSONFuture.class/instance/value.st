accessing
value 
	(process == Processor activeProcess) ifFalse: [ 
		semaphore wait ].
	^ realObject 