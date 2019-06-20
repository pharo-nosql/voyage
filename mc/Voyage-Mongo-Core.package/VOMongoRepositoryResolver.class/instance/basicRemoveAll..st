private persistence
basicRemoveAll: aClass
	self writingPool
		withDatabase: [ :db | 
			| removeConcern collection |
			removeConcern := self removeConcernFor: aClass.
			collection := self collectionAt: aClass inDatabase: db.
			mongoUrlResolver
				delete: Dictionary new
				from: collection
				withConcern: removeConcern
				limit: 0 ]