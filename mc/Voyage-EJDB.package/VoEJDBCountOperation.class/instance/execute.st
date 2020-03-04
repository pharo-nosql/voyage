execution
execute
	| collection |
	
	collection := repository collectionAt: queryClass.
	^ where 
		ifNotNil: [ collection count: where  ]
		ifNil: [ collection size ]
	