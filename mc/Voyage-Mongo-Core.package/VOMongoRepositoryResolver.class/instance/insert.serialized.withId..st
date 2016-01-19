private persistence
insert: anObject serialized: jsonDictionary withId: aOID
	self pool withDatabase: [ :db | 
		(self collectionAt: anObject class inDatabase: db) 
			add: (jsonDictionary
				at: '_id' put: aOID;
				yourself) ].

	^aOID