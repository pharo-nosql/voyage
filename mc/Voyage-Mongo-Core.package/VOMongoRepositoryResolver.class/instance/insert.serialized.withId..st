private persistence
insert: anObject serialized: jsonDictionary withId: aOID
	self writingPool withDatabase: [ :db | 
		(self collectionAt: anObject class inDatabase: db) 
			add: (jsonDictionary
				at: '_id' put: aOID;
				yourself) ].

	^aOID