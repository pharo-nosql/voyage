private persistence
basicRawSelectOne: aClass where: aDictionary
	^ self readingPool withDatabase: [ :db | 
		(repository collectionAt: aClass inDatabase: db) detect: aDictionary ]
	