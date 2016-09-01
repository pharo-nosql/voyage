serializing
serialize: anObject
	^self 
		serialize: anObject 
		description: (self descriptionFor: anObject)
	