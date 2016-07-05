private persistence
wireProtocolFireAndCheckUpdate: anObject serialized: jsonDictionary withId: aOID
	| currentVersion |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		(self collectionAt: anObject class inDatabase: db) 
			replace: {'_id'->aOID. '#version'->currentVersion} asDictionary
			with: (jsonDictionary
				at: '_id' put: aOID;
				yourself).
			
		db lastError updatedExisting 
			ifFalse: [ VOMongoSaveConflictError signal ] ].

	^aOID