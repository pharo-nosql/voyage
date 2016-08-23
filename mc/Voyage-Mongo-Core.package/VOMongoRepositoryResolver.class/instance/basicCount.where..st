private persistence
basicCount: aClass where: aDictionary
	^self readingPool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) sizeForQuery: aDictionary asMongoQuery ]
	