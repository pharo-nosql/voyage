execution
execute 
	| preSelection selected |
	
	preSelection := OrderedCollection new.
	(repository collectionAt: queryClass) selectAllWithId do: [ :eachAssoc | 
		preSelection add: (eachAssoc value 
			at: VoEJDBJSONSerializer fieldId put: eachAssoc key;
			yourself) ].
	
	selected := preSelection collect: [ :each | 
		repository 
			retrieveQueriedInstanceOf: queryClass 
			serialized: each ].
	queryClass = queryClass persistentClass ifFalse: [ 
		selected := selected select: [ :each | 
			each isKindOf: queryClass ] ].
	sortBlock ifNotNil: [ selected sort: sortBlock ].

	^ selected