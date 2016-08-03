accessing
handledErrorsByTimestamp
	^ handledErrorsByTimestamp ifNil: [ 
		handledErrorsByTimestamp := SmallDictionary new ]