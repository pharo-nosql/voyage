*voyage-model-core-extensions
remove: anObject
	self isVoyageRoot ifTrue: [ self voyageRepository remove: anObject ]