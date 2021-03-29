serializing
serialize: anObject description: aDescription
	| serialized op |
	
	op := (repository isNew: anObject)
		ifTrue: [ 
			repository insertOperation 
				object: anObject;
				id: (repository idForNewObject: anObject) ]
		ifFalse: [ 
			repository updateOperation 
				object: anObject;
				id: (repository keyOf: anObject) ].
	operations add: op.
	serialized := self basicSerialize: anObject description: aDescription.
	op serialized: serialized.
	
	^ operations