private
basicSelectOne: aClass where: aDictionary
	^ self pool withDatabase: [ :db | 
		(repository collectionAt: aClass inDatabase: db) detect: aDictionary ]
	