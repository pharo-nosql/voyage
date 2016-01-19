serializing
serialize: anObject
	^self 
		serialize: anObject 
		description: (self repository descriptionBuilder for: anObject class)
	