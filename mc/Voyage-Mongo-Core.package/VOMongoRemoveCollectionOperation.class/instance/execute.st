execution
execute 
	self writeDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
