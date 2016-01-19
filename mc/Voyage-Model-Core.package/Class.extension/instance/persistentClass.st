*voyage-model-core-extensions
persistentClass
	self == Object ifTrue: [ ^false ]. 
	(self class selectors includes: #isVoyageRoot)
		ifTrue: [ ^self ] 
		ifFalse: [ ^self superclass persistentClass ]