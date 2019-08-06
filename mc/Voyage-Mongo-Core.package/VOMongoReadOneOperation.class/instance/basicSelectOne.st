private
basicSelectOne
	^ self repository readDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) detect: where ]
	