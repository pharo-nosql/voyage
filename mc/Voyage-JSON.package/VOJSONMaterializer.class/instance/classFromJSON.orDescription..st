private
classFromJSON: aDictionary orDescription: aDescription
	| className |
	className := aDictionary 
		at: self class fieldType
		ifAbsent: [ aDescription kind name ].

	^ self repository classForType: className asSymbol
