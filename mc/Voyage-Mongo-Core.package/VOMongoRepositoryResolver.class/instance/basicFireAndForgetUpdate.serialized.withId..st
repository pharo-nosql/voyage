private persistence
basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID 
	self pool withDatabase: [ :db |
		(self 
			basicRawFireAndForgetUpdate: {'_id'->aOID} asDictionary 
			to: updateDictionary
			in: (self collectionAt: anObject class inDatabase: db)) ].
