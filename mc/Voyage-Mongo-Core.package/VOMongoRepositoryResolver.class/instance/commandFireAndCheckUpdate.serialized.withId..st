private persistence
commandFireAndCheckUpdate: anObject serialized: jsonDictionary withId: aOID 
	| currentVersion writeResultJson |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		writeResultJson := 
			(self collectionAt: anObject class inDatabase: db) 
				commandUpdate: {'_id'->aOID. '#version'->currentVersion} asDictionary
				with: (jsonDictionary
					at: '_id' put: aOID;
					yourself).
	(writeResultJson at: 'n') isZero ifTrue: [ VOMongoSaveConflictError signal ] ].
