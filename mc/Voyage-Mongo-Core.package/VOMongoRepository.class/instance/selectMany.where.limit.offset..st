persistence
selectMany: aClass where: aDictionary limit: limit offset: offset 
	| selected |
	selected := resolver selectMany: aClass where: aDictionary limit: limit offset: offset.
	^aClass = aClass persistentClass
		ifTrue: [ selected ]
		ifFalse: [ selected select: [ :each | each isKindOf: aClass ] ]