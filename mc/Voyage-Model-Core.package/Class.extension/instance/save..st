*voyage-model-core-extensions
save: anObject
	self isVoyageRoot 
		ifTrue: [ ^self voyageRepository save: anObject ]
		ifFalse: [ ^anObject ]