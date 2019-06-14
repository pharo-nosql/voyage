private persistence
basicCount: aClass where: aDictionary
	^self readingPool withDatabase: [ :db | 
		(repository collectionAt: aClass inDatabase: db) sizeForQuery: aDictionary asMongoQuery ]
	