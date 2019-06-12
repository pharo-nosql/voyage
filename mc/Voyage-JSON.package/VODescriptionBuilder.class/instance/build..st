private building
build: aClass
	^ aClass isMeta
		ifTrue: [ self buildClass: aClass classSide ]
		ifFalse: [ self buildClass: aClass ]