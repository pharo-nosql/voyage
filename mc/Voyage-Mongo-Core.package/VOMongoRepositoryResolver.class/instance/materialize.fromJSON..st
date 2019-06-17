private
materialize: anObject fromJSON: jsonDictionary
	^ repository newMaterializer 
		materialize: anObject 
		fromJSON: jsonDictionary