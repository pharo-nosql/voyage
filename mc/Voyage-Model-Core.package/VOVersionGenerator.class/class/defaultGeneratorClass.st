accessing
defaultGeneratorClass
	^ self allSubclasses 
		detect: #isDefault
		ifNone: [ self allSubclasses first ]