*Voyage-Model-Core
isNew: anObject 
	^self isVoyageRoot 
		ifTrue: [ self voyageRepository isNew: anObject ]
		ifFalse: [ false ]