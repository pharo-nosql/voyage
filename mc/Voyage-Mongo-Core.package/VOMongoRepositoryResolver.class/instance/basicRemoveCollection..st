private
basicRemoveCollection: aClass
	self writingPool withDatabase:  [ :db | 
		(self collectionAt: aClass inDatabase: db) drop.
		
		repository mongoUrlResolver checkLastError: db ].
