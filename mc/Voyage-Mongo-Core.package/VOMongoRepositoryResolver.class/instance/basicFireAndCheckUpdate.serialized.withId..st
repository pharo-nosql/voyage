private persistence
basicFireAndCheckUpdate: anObject serialized: updateDictionary withId: aOID 
	self writingPool withDatabase: [ :db | 
		| currentVersion hasUpdated updateConcern |
		currentVersion := self cacheVersionAt: aOID.
		updateConcern := self updateConcernFor: anObject class.

		hasUpdated := self 
			basicRawFireAndCheckUpdate: {'_id'->aOID. '#version'->currentVersion} asDictionary 
			to: updateDictionary
			in: (self collectionAt: anObject class inDatabase: db)
			concern: updateConcern.

		hasUpdated ifFalse: [ VOMongoNotCurrentError signal ] ].
