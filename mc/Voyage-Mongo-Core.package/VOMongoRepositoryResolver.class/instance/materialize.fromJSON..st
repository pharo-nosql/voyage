private convenience
materialize: anObject fromJSON: jsonDictionary
	^repository materializer 
		materialize: anObject 
		fromJSON: jsonDictionary