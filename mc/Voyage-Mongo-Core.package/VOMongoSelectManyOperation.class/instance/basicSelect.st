private persistence
basicSelect
	^ self pool withDatabase: [ :db | 
		(repository collectionAt: queryClass inDatabase: db) 
			select: (where ifNil: [ { }  ])
			limit: limit
			offset: offset
			order: (sortBlock ifNil: [ { } ]) ]