updating
basicFireAndCheckUpdate: anObject serialized: updateDictionary withId: aOID 
	self pool withDatabase: [ :db | 
		| currentVersion hasUpdated |
		currentVersion := repository cacheVersionAt: aOID.

		hasUpdated := self 
			basicRawFireAndCheckUpdate: {repository fieldRootId -> aOID. '#version'->currentVersion} asDictionary 
			to: updateDictionary
			in: (repository collectionAt: anObject class inDatabase: db).

		hasUpdated ifFalse: [ VOMongoNotCurrentError signal ] ].
