private persistence
basicRemove: anObject 
	self pool withDatabase: [ :db |
		(self collectionAt: anObject class inDatabase: db) 
			delete: { '_id'->(self keyOf: anObject)} asDictionary ]
