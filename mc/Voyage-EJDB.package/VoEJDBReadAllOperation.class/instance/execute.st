execution
execute 
	| preSelection selected |
	
	OrderedCollection new.
	preSelection :=  (repository collectionAt: queryClass) selectAllWithId 
		collect: [ :eachAssoc | 
			eachAssoc value 
				at: VoEJDBJSONSerializer fieldId put: eachAssoc key;
				yourself ].
	
	selected := preSelection collect: [ :each | 
		repository 
			retrieveQueriedInstanceOf: queryClass 
			serialized: each ].
	queryClass = queryClass persistentClass ifFalse: [ 
		selected := selected select: [ :each | 
			each isKindOf: queryClass ] ].
	sortBlock ifNotNil: [ selected sort: sortBlock ].

	^ selected