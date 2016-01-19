private persistence
basicRawSelectOne: aClass where: aDictionary
	^self pool withDatabase: [ :db | 
		(self collectionAt: aClass inDatabase: db) detect: aDictionary ]
	