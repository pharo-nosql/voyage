initialization
initialize 
	super initialize.
	semaphore := Semaphore new.
	process := Processor activeProcess 