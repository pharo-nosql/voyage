private persistence
basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID 
	self writingPool withDatabase: [ :db |
		(self 
			basicRawFireAndForgetUpdate: {'_id'->aOID} asDictionary 
			to: updateDictionary
			in: (self collectionAt: anObject class inDatabase: db)) ].
