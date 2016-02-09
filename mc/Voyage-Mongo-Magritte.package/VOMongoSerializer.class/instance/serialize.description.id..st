serializing
serialize: anObject description: aDescription id: anOID
	| future jsonDictionary |
	
	future := (VOMongoFuture realObject: anObject id: anOID).
	futures add: future.
	jsonDictionary := self basicSerialize: anObject description: aDescription.
	future serialized: (jsonDictionary
		at: self class fieldRootId put: future futureId;
		yourself).
	
	^ futures