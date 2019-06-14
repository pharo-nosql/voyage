private
basicRemoveCollection: aClass
	self writingPool withDatabase:  [ :db | 
		(repository collectionAt: aClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
