accessing
collectionAt: queryClass readingDo: aBlock
	^ self databaseReadingDo: [ :db |
		aBlock value: (self collectionAt: queryClass inDatabase: db) ]