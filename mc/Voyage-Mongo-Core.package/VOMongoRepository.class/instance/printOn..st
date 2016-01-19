printing
printOn: aStream 

	super initialize.
	host ifNotNil: [ aStream nextPutAll: ' ', host, ' '].
	databaseName ifNotNil: [ aStream nextPutAll: databaseName ].