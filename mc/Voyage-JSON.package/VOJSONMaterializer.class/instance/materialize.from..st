materializing
materialize: anObject from: aDictionary
	^ self 
		materialize: anObject 
		fromJSON:  aDictionary 
		