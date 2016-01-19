private persistence
basicRawSelectMany: aClass where: aDictionary order: anotherDictionary limit: limit offset: offset
	^self pool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) 
			select: aDictionary
			limit: limit
			offset: offset
			order: anotherDictionary ]