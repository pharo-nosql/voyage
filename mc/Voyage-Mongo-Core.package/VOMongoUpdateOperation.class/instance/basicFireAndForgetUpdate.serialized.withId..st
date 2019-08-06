updating
basicFireAndForgetUpdate: anObject serialized: updateDictionary withId: aOID 
	self repository writeDatabaseWith: [ :db |
		(self 
			basicRawFireAndForgetUpdate: { repository fieldRootId -> aOID } asDictionary 
			to: updateDictionary
			in: (repository collectionAt: anObject class inDatabase: db)) ].
