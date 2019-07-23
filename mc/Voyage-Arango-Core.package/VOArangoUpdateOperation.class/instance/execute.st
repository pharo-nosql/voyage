execution
execute
	| response document collectionName client |
	serialized 
		at: repository fieldRootId put: id asString.

	collectionName := repository collectionNameFor: object class.
	client := repository client.
	response := [ 
		client
			updateDocument: serialized collection: collectionName ]
			on: ArangoCollectionNotFoundError 
			do: [ :error |
				"mimick mongo behaviour and auto-create collection and repeat
				adding document"
				client 
					createCollection: collectionName;
					createDocument: serialized collection: collectionName ].
	document := (NeoJSONReader fromString: response contents) anyOne.
	
	repository cacheAt: id putVersion: (document at: repository fieldVersion).