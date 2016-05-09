private persistence
commandFireAndCheckUpdate: anObject serialized: jsonDictionary withId: aOID 
	| currentVersion lastError |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		lastError := db command: {
			'update'->self collectionNameFor: anObject class.
			'updates'->{
				'q'->{'_id'->aOID. '#version'->currentVersion} asDictionary.
				'u'->jsonDictionary at: '_id' put: aOID; yourself.
				} asDictionary.
			} asDictionary.
			
		"TODO (lastError at: 'n') isZero ifTrue: [ VOMongoSaveConflictError signal ]" ].

	^aOID