printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(.

	self members printElementsOn: aStream.

	aStream
		nextPut: $/;
		nextPutAll: self databaseName asString;
		nextPut: $)