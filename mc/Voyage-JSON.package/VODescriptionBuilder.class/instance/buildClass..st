private
buildClass: aClass
	| containerPragmas explicitContainer pragmas explicitDescriptions inferedDescriptions |

	containerPragmas := Pragma allNamed: #mongoContainer from: aClass theMetaClass to: Class.
	explicitContainer := containerPragmas isEmpty
		ifTrue: [ self buildInferedContainer: aClass ]
		ifFalse: [ self buildContainer: (containerPragmas first) in: aClass ].
	
	pragmas := self removeDuplicated: (self collectPragmasFor: aClass).
	explicitDescriptions := pragmas collect: [ :each | self build: each in: aClass ].
	inferedDescriptions := (aClass allInstVarNames 
		copyWithoutAll: (
			(explicitContainer children collect: #attributeName), 
			(explicitDescriptions collect: #attributeName)))
		collect: [ :each | self buildInfered: each ]. 

	^explicitContainer 
		addAll: explicitDescriptions;
		addAll: inferedDescriptions;
		yourself  