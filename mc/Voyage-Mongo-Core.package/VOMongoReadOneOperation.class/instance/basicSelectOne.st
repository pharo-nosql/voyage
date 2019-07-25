private
basicSelectOne
	^ self readDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) detect: where ]
	