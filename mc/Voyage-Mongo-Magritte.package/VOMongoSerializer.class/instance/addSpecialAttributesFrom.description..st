private
addSpecialAttributesFrom: anObject description: aDescription
	aDescription shouldRememberKind 
		ifTrue: [ self json at: self class fieldType put: anObject class name ].