private building
buildContainerFor: aClass
	| availablePragmas |
	"The order of collection of pragmas is important to later answer the most suitable"
	availablePragmas := self collectContainerPragmasFor: aClass.
	^ availablePragmas 
		ifNotEmpty: [ :pragma | self buildContainer: pragma first in: aClass ]
		ifEmpty: [ self buildInferedContainer: aClass ]