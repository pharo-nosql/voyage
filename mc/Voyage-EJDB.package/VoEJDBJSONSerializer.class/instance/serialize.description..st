serializing
serialize: anObject description: aDescription
	| serialized id operation |
	
	id := repository idOf: anObject.
	operation := id
		ifNotNil: [ 
			repository updateOperation 
				object: anObject;
				id: id;
				yourself ]
		ifNil: [ 
			repository insertOperation 
				object: anObject;
				yourself ].
	
	operations add: operation.
	serialized := self basicSerialize: anObject description: aDescription.
	operation serialized: serialized.
	
	^ operations