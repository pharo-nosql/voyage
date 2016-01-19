*voyage-model-core-extensions
voyageId: anObject 
	^ self isVoyageRoot 
		ifTrue: [ self voyageRepository idOf: anObject ]
		ifFalse: [ nil ]