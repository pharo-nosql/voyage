persistence
selectMany: aClass where: aDictionary
	| selected |
	selected := resolver selectMany: aClass where: aDictionary  limit: nil offset: 0.
	^aClass = aClass persistentClass
		ifTrue: [ selected ]
		ifFalse: [ selected select: [ :each | each isKindOf: aClass ] ]