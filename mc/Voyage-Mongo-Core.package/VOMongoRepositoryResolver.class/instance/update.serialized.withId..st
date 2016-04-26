private persistence
update: anObject serialized: jsonDictionary withId: aOID
	| currentVersion lastError |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		(self collectionAt: anObject class inDatabase: db) 
			replace: {'_id'->aOID. '#version'->currentVersion} asDictionary
			with: (jsonDictionary
				at: '_id' put: aOID;
				yourself).
			
		self flag: #todo. "Move to Mongo"
		"See more: https://docs.mongodb.org/manual/reference/command/getLastError/"
		lastError := db command: {'getLastError'->1} asDictionary.
		(lastError at: 'n') isZero ifTrue: [ VOMongoSaveConflictError signal ] ].

	^aOID