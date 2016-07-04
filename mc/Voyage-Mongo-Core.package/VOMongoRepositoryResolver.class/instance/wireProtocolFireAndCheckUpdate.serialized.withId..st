private persistence
wireProtocolFireAndCheckUpdate: anObject serialized: jsonDictionary withId: aOID
	| currentVersion lastError |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		(self collectionAt: anObject class inDatabase: db) 
			replace: {'_id'->aOID. '#version'->currentVersion} asDictionary
			with: (jsonDictionary
				at: '_id' put: aOID;
				yourself).
			
		db command: {'getLastError'->1} asDictionary.
		lastError 
			at: 'updatedExisting' 
			ifPresent: [ :value | value ifFalse: [ VOMongoSaveConflictError signal ] ] ].

	^aOID