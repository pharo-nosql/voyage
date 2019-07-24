private
basicSelectOne
	^ self withDatabase: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) detect: where ]
	