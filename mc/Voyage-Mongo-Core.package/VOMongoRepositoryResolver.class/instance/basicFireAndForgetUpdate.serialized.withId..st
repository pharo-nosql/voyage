private persistence
basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID 
	self writingPool withDatabase: [ :db |
		(self 
			basicRawFireAndForgetUpdate: {'_id'->aOID} asDictionary 
			to: updateDictionary
			in: (repository collectionAt: anObject class inDatabase: db)) ].
