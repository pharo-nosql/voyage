private
build: aClass
	^aClass isMeta 
		ifTrue: [ self buildMetaclass: aClass ]
		ifFalse: [ self buildClass: aClass ].