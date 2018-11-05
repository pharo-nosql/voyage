*Voyage-Model-Core
save: anObject
	self isVoyageRoot 
		ifTrue: [ ^self voyageRepository save: anObject ]
		ifFalse: [ ^anObject ]