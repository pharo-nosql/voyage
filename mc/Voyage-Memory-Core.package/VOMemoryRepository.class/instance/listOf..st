private
listOf: aClass
	| objectSet |
	objectSet := self list: aClass.
	^ aClass = (self collectionClassOf: aClass)
		ifTrue: [ objectSet ]
		ifFalse: [ objectSet select: [ :each | each isKindOf: aClass] ]
