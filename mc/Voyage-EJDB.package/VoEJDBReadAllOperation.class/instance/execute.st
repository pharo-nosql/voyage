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
	sortBlock ifNotNil: [ selected sort: sortBlock ].

	^ selected