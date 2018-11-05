*Voyage-Model-Core
remove: anObject
	self isVoyageRoot ifTrue: [ self voyageRepository remove: anObject ]