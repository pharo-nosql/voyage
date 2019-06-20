private persistence
insert: anObject serialized: jsonDictionary withId: aOID
	self writingPool withDatabase: [ :db | 
		| insertConcern collection |
		insertConcern := self insertConcernFor: anObject class.
		collection := self collectionAt: anObject class inDatabase: db.

		mongoUrlResolver add: (jsonDictionary
				at: '_id' put: aOID;
				yourself) to: collection withConcern: insertConcern.
	].

	^aOID