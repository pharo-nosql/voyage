I generate versions with timestamp and counter (in case more than one version is generated in same millisecond)
I calculate versions as this: 

	a 2-byte machine identifier (random generated),
	a 4-byte value representing the milliseconds,	
	a 2-byte counter.
