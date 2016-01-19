*voyage-model-core-extensions
isNew: anObject 
	^self isVoyageRoot 
		ifTrue: [ self voyageRepository isNew: anObject ]
		ifFalse: [ false ]