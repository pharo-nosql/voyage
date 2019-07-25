execution
execute
	self writeDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) remove: Dictionary new.
		
		repository mongoUrlResolver checkLastError: db ].