private persistence
basicSelect
	^ self readDatabaseWith: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) 
			select: (where ifNil: [ { }  ])
			limit: limit
			offset: offset
			order: (sortBlock ifNil: [ { } ]) ]