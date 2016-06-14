initialization
initialize
	super initialize.
	 
	retriesLeft := 4.
	handledErrorsByTimestamp := SmallDictionary new