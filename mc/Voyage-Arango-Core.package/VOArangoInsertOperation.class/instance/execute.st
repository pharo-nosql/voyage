execution
execute 
	| response document collectionName client |
	serialized 
		at: repository fieldRootId put: id asString.

	collectionName := repository collectionNameFor: object class.
	client := repository client.
	document := [ 
		client
			createDocument: serialized collection: collectionName ]
			on: ArangoCollectionNotFoundError 
			do: [ :error |
				"mimick mongo behaviour and auto-create collection and repeat
				adding document"
				client 
					createCollection: collectionName;
					createDocument: serialized collection: collectionName ].
	
	repository cacheAt: id put: object.
	repository cacheAt: id putVersion: document revision.