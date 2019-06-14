private persistence
basicCount: aClass 
	^self readingPool withDatabase: [ :db | 
		(repository collectionAt: aClass inDatabase: db) size ]