private
rawEmbeded: anObject description: aDescription 
	"I act as a kind of post-process of serialization for embed"
	| jsonDictionary |
	
	jsonDictionary := self serialize: anObject.
	aDescription hasKind 
		ifTrue: [ jsonDictionary removeKey: self class fieldType ifAbsent: [] ].
		
	^jsonDictionary