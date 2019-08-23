persistence
basicSelectOne
	|response |
	response := repository client
		readOne: (repository collectionNameFor: queryClass) where: where. 
	^ response