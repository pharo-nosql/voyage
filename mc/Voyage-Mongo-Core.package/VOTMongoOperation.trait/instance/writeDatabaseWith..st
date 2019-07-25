accessing
writeDatabaseWith: aBlock
	^ self repository writingPool withDatabase: aBlock