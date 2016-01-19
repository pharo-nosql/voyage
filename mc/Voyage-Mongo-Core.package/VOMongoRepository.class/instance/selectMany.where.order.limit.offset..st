persistence
selectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset 
	| selected |
	
	self flag: #todo. "this sucks (as well as the repository resolver protocol) and needs to be refactored!!"
	
	selected := resolver selectMany: aClass where: aDictionary order: orderDictionary limit: limit offset: offset.
	^aClass = aClass persistentClass
		ifTrue: [ selected ]
		ifFalse: [ selected select: [ :each | each isKindOf: aClass ] ]