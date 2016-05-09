private persistence
commandFireAndCheckUpdate: anObject serialized: jsonDictionary withId: aOID 
	| currentVersion writeResultJson |
	currentVersion := self cacheVersionAt: aOID.

	self pool withDatabase: [ :db |
		writeResultJson := db command: {
			'update'->self collectionNameFor: anObject class.
			'updates'->{
				'q'->{'_id'->aOID. '#version'->currentVersion} asDictionary.
				'u'->jsonDictionary at: '_id' put: aOID; yourself.
				} asDictionary.
			} asDictionary.
			
		"TODO: writeResultJson ... ifTrue: [ VOMongoSaveConflictError signal ]" ].

	^aOID