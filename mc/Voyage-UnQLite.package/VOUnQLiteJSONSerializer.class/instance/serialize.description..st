accessing
serialize: anObject description: aDescription
	| future |
	
	future := self futureClass realObject: anObject repository: self repository.
	futures add: future.
	future serialized: (self 
		basicSerialize: anObject 
		description: aDescription).
	
	^ futures