initialization
initialize
	super initialize.
	 
	retriesLeft := 15.
	handledErrorsByTimestamp := SmallDictionary new