accessing
collectionAt: queryClass writingDo: aBlock
	^ self databaseWritingDo: [ :db |
		aBlock value: (self collectionAt: queryClass inDatabase: db) ]