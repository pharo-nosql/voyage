private
listOf: aClass
	| objectSet |
	objectSet := self list: aClass.
	^ aClass = aClass persistentClass 
		ifTrue: [ objectSet ]
		ifFalse: [ objectSet select: [ :each | each isKindOf: aClass] ]
