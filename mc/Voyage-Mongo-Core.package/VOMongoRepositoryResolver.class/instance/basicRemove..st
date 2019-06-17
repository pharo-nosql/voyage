private persistence
basicRemove: anObject 
	self writingPool withDatabase: [ :db |
		(repository collectionAt: anObject class inDatabase: db) 
			delete: { '_id'->(self keyOf: anObject)} asDictionary.
			
		repository mongoUrlResolver checkLastError: db ]
