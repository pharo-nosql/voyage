private persistence
basicRawSelectMany: aClass where: aDictionary limit: limit offset: offset
	^self pool withDatabase: [ :db | | collection | 
		(self collectionAt: aClass inDatabase: db) 
			select: aDictionary 
			limit: limit 
			offset: offset ]