private persistence
basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID 
	self writingPool withDatabase: [ :db |
		| updateConcern |
		updateConcern := self updateConcernFor: anObject class.
		(self 
			basicRawFireAndForgetUpdate: {'_id'->aOID} asDictionary 
			to: updateDictionary
			in: (self collectionAt: anObject class inDatabase: db)
			concern: updateConcern) ].
