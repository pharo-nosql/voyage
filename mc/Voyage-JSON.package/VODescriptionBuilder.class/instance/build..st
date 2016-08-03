private building
build: aClass
	^aClass isMeta 
		ifTrue: [ self buildClass: aClass theMetaClass ]
		ifFalse: [ self buildClass: aClass ].