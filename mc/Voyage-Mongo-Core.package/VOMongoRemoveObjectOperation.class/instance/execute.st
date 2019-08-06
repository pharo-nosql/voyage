execution
execute 
	self repository writeDatabaseWith: [ :db |
		(repository collectionAt: object class inDatabase: db) 
			delete: { repository fieldRootId -> (repository keyOf: object)} asDictionary.
			
		repository mongoUrlResolver checkLastError: db ].
	repository cache removeValue: object

	