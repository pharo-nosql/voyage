private persistence
basicRemove: anObject 
	self writingPool withDatabase: [ :db |
		(self collectionAt: anObject class inDatabase: db) 
			delete: { '_id'->(self keyOf: anObject)} asDictionary.
			
		self checkLastError: db ]
