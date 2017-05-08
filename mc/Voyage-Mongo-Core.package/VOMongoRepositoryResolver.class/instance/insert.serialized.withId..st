private persistence
insert: anObject serialized: jsonDictionary withId: aOID
	self writingPool withDatabase: [ :db | 
		| insertConcern |
		(self collectionAt: anObject class inDatabase: db) 
			add: (jsonDictionary
				at: '_id' put: aOID;
				yourself).

		insertConcern := self insertConcernFor: anObject class.
		mongoUrlResolver checkLastError: db concern: insertConcern.
	].

	^aOID