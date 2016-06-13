private
readObject: mongoObject description: aDescription
	mongoObject isDictionary 
		ifTrue: [
			(mongoObject includesKey: self class fieldId) 
				ifTrue: [ ^self readReference: mongoObject description: aDescription ].
			(mongoObject includesKey: self class fieldReference)
				ifTrue: [ ^self readTypeReference: mongoObject description: aDescription ].
			(aDescription hasKind or: [ mongoObject includesKey: self class fieldType ])
				ifTrue: [ ^self readEmbeded: mongoObject description: aDescription ].
			^self readDictionary: mongoObject description: aDescription ].

	mongoObject isTypePrimitive
		ifTrue: [ ^self readPrimitive: mongoObject description: aDescription ].
	mongoObject isCollection 
		ifTrue: [ ^self readCollection: mongoObject description: aDescription ].
		
	VOMongoError signal: 'Trying to materialize an unknown type'