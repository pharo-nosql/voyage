as yet unclassified
execute
	self pool withDatabase: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) remove: Dictionary new.
		
		repository mongoUrlResolver checkLastError: db ].