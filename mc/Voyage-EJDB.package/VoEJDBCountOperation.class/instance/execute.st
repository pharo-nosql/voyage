execution
execute
	| collection |
	
	collection := repository collectionAt: queryClass.
	^ where 
		ifNotNil: [ collection count: where asEJDBQuery ]
		ifNil: [ collection size ]