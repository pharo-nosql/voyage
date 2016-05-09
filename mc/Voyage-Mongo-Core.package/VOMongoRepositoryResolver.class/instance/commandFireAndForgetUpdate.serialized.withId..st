private persistence
commandFireAndForgetUpdate: anObject serialized: jsonDictionary withId: aOID 

	self pool withDatabase: [ :db |
		(self collectionAt: anObject class inDatabase: db) 
			commandUpdate: {'_id'->aOID} asDictionary
			with: (jsonDictionary at: '_id' put: aOID; yourself) ].

	^aOID