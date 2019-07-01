execution
execute 
	self pool withDatabase:  [ :db | 
		(repository collectionAt: queryClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
