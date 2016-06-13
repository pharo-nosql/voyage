private
readTypeReference: aDictionary description: aDescription
	^Smalltalk globals 
		at: (aDictionary at: self class fieldReference) 