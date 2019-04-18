*Voyage-Model-Core
voyageId: anObject 
	^ self isVoyageRoot 
		ifTrue: [ self voyageRepository idOf: anObject ]
		ifFalse: [ nil ]