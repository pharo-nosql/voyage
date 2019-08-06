execution
execute 
	self repository writeDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
