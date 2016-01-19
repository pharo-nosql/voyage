private persistence
basicCount: aClass where: aDictionary
	^self pool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) sizeForQuery: aDictionary ]
	