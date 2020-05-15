execution
execute 
	"EJDB does not seems to have a way to execute a query with an offset (even if it has limit), 
	 so we simulate it for now. 
	 Offset is zero based."
	| preSelection collection selected |
	
	collection := repository collectionAt: queryClass.
	preSelection := where 
		ifNotNil: [ collection selectWithId: where asEJDBQuery ]
		ifNil: [ collection selectAllWithId ].
	
	(offset notNil and: [ limit  notNil ]) ifTrue: [ 
		preSelection := preSelection 
			copyFrom: offset + 1 
			to: (offset + limit) ].
			
	selected := preSelection collect: [ :each | 
		repository 
			retrieveQueriedInstanceOf: queryClass 
			serialized: (each value 
				at: VoEJDBJSONSerializer fieldId put: each key;
				yourself) ].
	
	sortBlock ifNotNil: [ selected sort: sortBlock ].
	
	^ selected