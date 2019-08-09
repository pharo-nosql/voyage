accessing
serialize: anObject description: aDescription
	| future operation |
	
	future := self futureClass realObject: anObject repository: self repository.
	operation := repository saveOperation 
		object: anObject;
		future: future;
		yourself.
	
	futures add: future.
	operations add: operation.

	future serialized: (self 
		basicSerialize: anObject 
		description: aDescription).
	operation serialized: future serialized.
	
	^ operations