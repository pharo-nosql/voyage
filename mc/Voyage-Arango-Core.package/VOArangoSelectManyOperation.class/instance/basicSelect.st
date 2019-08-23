execution
basicSelect
	|response |
	response := repository client
		readMany: (repository collectionNameFor: queryClass) where: where limit: limit offset: offset. 
		
	^ response