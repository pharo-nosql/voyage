private persistence
basicRemove: anObject
	self writingPool
		withDatabase: [ :db | 
			| removeConcern collection |
			removeConcern := self removeConcernFor: anObject class.
			collection := self collectionAt: anObject class inDatabase: db.
			mongoUrlResolver
				delete: {('_id' -> (self keyOf: anObject))} asDictionary
				from: collection
				withConcern: removeConcern
				limit: 1 ]