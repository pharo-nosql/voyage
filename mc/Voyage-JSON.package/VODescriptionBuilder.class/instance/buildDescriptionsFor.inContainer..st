private building
buildDescriptionsFor: aClass inContainer: container
	| pragmas explicitDescriptions inferedDescriptions|
	pragmas := self removeDuplicated: (self collectPragmasFor: aClass).
	explicitDescriptions := pragmas collect: [ :each | self build: each in: aClass ].
	inferedDescriptions := (aClass allInstVarNames 
		copyWithoutAll: (
			(container children collect: #attributeName), 
			(explicitDescriptions collect: #attributeName)))
		collect: [ :each | self buildInfered: each ]. 
		
	^ explicitDescriptions, inferedDescriptions