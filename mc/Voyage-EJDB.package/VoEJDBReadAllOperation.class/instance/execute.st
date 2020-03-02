execution
execute 
	| preSelection query selected |
	
	preSelection := OrderedCollection new.
	query := (repository collectionAt: queryClass) queryAll.
	query resultsDo: [ :eachId :eachDoc | 
		preSelection add: (eachDoc
			at: VoEJDBJSONSerializer fieldId put: eachId;
			yourself) ].
	
	selected := preSelection collect: [ :each | 
		repository 
			retrieveQueriedInstanceOf: queryClass 
			serialized: each ].
	sortBlock ifNotNil: [ selected sort: sortBlock ].

	^ selected