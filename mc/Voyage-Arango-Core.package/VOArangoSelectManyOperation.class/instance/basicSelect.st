execution
basicSelect
	|response |
	response := repository client
		operationWithId: 'ReturnAllDocuments' 
		arguments: {} 
		body: { 'collection' -> queryClass name } asDictionary.
	^ (NeoJSONReader fromString: response contents) at: #result