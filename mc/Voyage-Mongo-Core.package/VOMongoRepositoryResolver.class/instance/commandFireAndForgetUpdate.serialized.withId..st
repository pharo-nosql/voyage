private persistence
commandFireAndForgetUpdate: anObject serialized: jsonDictionary withId: aOID 
	| currentVersion lastError |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		lastError := db command: {
			'update'->self collectionNameFor: anObject class.
			'updates'->{
				'q'->{'_id'->aOID} asDictionary.
				'u'->jsonDictionary at: '_id' put: aOID; yourself.
				} asDictionary.
			} asDictionary ].

	^aOID