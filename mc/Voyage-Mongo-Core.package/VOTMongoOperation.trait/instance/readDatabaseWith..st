accessing
readDatabaseWith: aBlock
	^ self repository readingPool withDatabase: aBlock