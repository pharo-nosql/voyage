private
buildMetaclass: aClass
	| containerPragmas explicitContainer pragmas explicitDescriptions inferedDescriptions |
	
	containerPragmas := Pragma allNamed: #mongoContainer from: Metaclass to: Behavior.
	explicitContainer := containerPragmas isEmpty
		ifTrue: [ self buildInferedContainer: aClass ]
		ifFalse: [ self buildContainer: (containerPragmas first) in: aClass ].
	
	pragmas := self removeDuplicated: (Pragma allNamed: #mongoDescription from: Metaclass to: Behavior).
	explicitDescriptions := pragmas collect: [ :each | self build: each in: aClass ].
	inferedDescriptions := (aClass theMetaClass allInstVarNames 
		copyWithoutAll: (
			(explicitContainer children collect: #attributeName), 
			(explicitDescriptions collect: #attributeName)))
		collect: [ :each | self buildInfered: each ]. 

	^explicitContainer 
		addAll: explicitDescriptions;
		addAll: inferedDescriptions;
		yourself  