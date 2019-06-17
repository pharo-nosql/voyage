execution
execute 
	self pool withDatabase:  [ :db | 
		(repository collectionAt: from inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
