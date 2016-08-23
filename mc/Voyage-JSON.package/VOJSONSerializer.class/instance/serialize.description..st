serializing
serialize: anObject description: aDescription
	| future |
	
	future := self futureClass realObject: anObject.
	futures add: future.
	future serialized: (self 
		basicSerialize: anObject 
		description: aDescription).
	
	^ futures