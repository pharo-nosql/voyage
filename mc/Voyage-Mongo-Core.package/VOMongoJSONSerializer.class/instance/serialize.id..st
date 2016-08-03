serializing
serialize: anObject id: anOID
	^self 
		serialize: anObject 
		description: (self descriptionFor: anObject)
		id: anOID	