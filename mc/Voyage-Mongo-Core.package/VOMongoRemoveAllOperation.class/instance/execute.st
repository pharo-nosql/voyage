execution
execute
	self repository writeDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) remove: Dictionary new.
		
		repository mongoUrlResolver checkLastError: db ].