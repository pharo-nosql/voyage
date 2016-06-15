initialization
initialize
	super initialize.
	 
	retriesLeft := 3.
	handledErrorsByTimestamp := SmallDictionary new