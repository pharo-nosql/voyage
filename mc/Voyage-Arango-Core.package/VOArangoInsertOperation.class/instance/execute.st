execution
execute 
	| response document |
	serialized 
		at: repository fieldRootId put: id asString.

	response := repository client
			createDocument: serialized collection: object class name.
	document := NeoJSONReader fromString: response contents.
	
	repository cacheAt: id put: object.
	repository cacheAt: id putVersion: (document at: repository fieldVersion).