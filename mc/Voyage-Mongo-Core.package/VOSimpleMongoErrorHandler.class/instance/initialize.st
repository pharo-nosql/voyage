initialization
initialize
	super initialize.
	 
	retriesLeft := 5.
	handledErrorsByTimestamp := SmallDictionary new