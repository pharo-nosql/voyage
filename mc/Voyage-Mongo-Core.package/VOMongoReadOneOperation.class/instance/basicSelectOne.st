private
basicSelectOne
	^ self pool withDatabase: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) detect: where ]
	