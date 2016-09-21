private persistence
basicFireAndCheckUpdate: anObject serialized: updateDictionary withId: aOID 
	self writingPool withDatabase: [ :db | 
		| currentVersion hasUpdated |
		currentVersion := self cacheVersionAt: aOID.

		hasUpdated := self 
			basicRawFireAndCheckUpdate: {'_id'->aOID. '#version'->currentVersion} asDictionary 
			to: updateDictionary
			in: (self collectionAt: anObject class inDatabase: db).

		hasUpdated ifFalse: [ VOMongoNotCurrentError signal ] ].
