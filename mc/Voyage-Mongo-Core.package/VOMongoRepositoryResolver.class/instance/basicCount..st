private persistence
basicCount: aClass 
	^self readingPool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) size ]