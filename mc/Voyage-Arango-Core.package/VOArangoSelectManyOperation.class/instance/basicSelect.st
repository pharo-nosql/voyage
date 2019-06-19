execution
basicSelect
	|response |
	response := repository client
		readMany: queryClass where: where limit: limit offset: offset. 
		
	^ (NeoJSONReader fromString: response contents) at: #result