private persistence
basicRawSelectMany: aClass where: aDictionary order: anotherDictionary limit: limit offset: offset
	^ self readingPool withDatabase: [ :db | 
		(repository collectionAt: aClass inDatabase: db) 
			select: aDictionary
			limit: limit
			offset: offset
			order: (anotherDictionary ifNil: [ {} ]) ]