private
rawReference: anObject description: aDescription
	| jsonDictionary |
	
	self flag: #todo. "This is not good... is not 'persist if new' is 'persist if outdated' "
	(self repository isNew: anObject)
		ifTrue: [ self ensurePersisted: anObject ].
	
	jsonDictionary := self referenceToDictionary: anObject.
	aDescription hasKind 
		ifTrue: [ jsonDictionary removeKey: self class fieldType ifAbsent: []].

	^ jsonDictionary