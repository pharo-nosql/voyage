execution
execute 
	self withDatabase: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
