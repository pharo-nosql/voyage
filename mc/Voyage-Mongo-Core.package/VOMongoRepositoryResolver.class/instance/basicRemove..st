private persistence
basicRemove: anObject 
	self writingPool withDatabase: [ :db |
		| removeConcern |
		(self collectionAt: anObject class inDatabase: db) 
			delete: { '_id'->(self keyOf: anObject)} asDictionary.

		removeConcern := self removeConcernFor: anObject class.
		mongoUrlResolver checkLastError: db concern: removeConcern ].
