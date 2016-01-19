private persistence
basicCount: aClass 
	^self pool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) size ]