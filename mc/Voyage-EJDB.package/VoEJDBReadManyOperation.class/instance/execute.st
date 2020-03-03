execution
execute 
	"EJDB does not seems to have a way to execute a query with an offset (even if it has limit), 
	 so we simulate it for now. 
	 Offset is zero based."
	| preselection query selected number |
	
	preselection := OrderedCollection new.
	number := 0.
	query := (repository collectionAt: queryClass) query: where asEJDBQuery.
	query resultsDo: [ :eachOd :eachDoc | 
		number := number + 1.
		(offset notNil 
			and: [ limit notNil
			and: [ number > offset 
			and: [ number < (offset + limit) ] ] ])
			ifTrue: [ 
				 preselection add: eachDoc toDocument ] ].
	
	selected := repository 
		materializeSelection: preselection 
		of: queryClass.
	sortBlock ifNotNil: [ selected sort: sortBlock ].
	
	^ selected