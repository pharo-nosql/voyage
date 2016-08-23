private
classFromJSON: aDictionary orDescription: aDescription
	| className |
	className := aDictionary 
		at: self class fieldType
		ifAbsent: [ aDescription kind name ].
	^Smalltalk globals at: className asSymbol
