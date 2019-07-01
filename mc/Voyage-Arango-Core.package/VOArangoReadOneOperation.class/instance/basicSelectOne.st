persistence
basicSelectOne
	|response |
	response := repository client
		readOne: (repository collectionNameFor: queryClass) where: where. 
	^ ((NeoJSONReader fromString: response contents) at: #result) anyOne