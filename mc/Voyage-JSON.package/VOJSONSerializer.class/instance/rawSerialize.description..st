private raw
rawSerialize: rawValue description: aDescription
	"we need to check dictionary first in case a rawValue is a dictionary
	and has values that are not primitive"
	rawValue isDictionary 
		ifTrue: [ ^self rawDictionary: rawValue description: aDescription ].
		
	rawValue isTypePrimitive ifTrue: [ ^rawValue ].
	"rawValue isTypeFuture 
		ifTrue: [ ^self rawFuture: rawValue description: aDescription ]."
	rawValue isTypePersistent 
		ifTrue: [ ^self rawReference: rawValue description: aDescription ].
	rawValue isCollection 
		ifTrue: [ ^self rawCollection: rawValue description: aDescription ].
	^self rawEmbeded: rawValue description: aDescription