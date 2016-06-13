private
objectFromJSON: aDictionary orDescription: aDescription
	(aDictionary includesKey: self class fieldReference)
		ifTrue: [ ^Smalltalk globals at: (aDictionary at: self class fieldReference) asSymbol ].  
	^(self classFromJSON: aDictionary orDescription: aDescription) basicNew
