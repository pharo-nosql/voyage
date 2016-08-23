*voyage-model-core-extensions
persistentClass
	self == Object ifTrue: [ ^ nil ]. 
	(self class selectors includes: #isVoyageRoot)
		ifTrue: [ ^self ] 
		ifFalse: [ ^self superclass persistentClass ]