private raw
rawEmbeded: anObject description: aDescription 
	"I act as a kind of post-process of serialization for embed"
	| jsonDictionary |
	
	jsonDictionary := self 
		basicSerialize: anObject 
		description: (self descriptionFor: anObject).
	aDescription hasKind 
		ifTrue: [ jsonDictionary removeKey: self class fieldType ifAbsent: [] ].
		
	^jsonDictionary