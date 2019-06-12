private persistence
basicRawSelectOne: aClass where: aDictionary
	^ self readingPool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) detect: aDictionary ]
	