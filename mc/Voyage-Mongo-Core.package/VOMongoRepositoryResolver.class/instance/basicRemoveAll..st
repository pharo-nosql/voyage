private persistence
basicRemoveAll: aClass
	self writingPool withDatabase: [ :db | 
		(repository collectionAt: aClass inDatabase: db) remove: Dictionary new.
		
		repository mongoUrlResolver checkLastError: db ].