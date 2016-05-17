printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(;
		nextPutAll: self host asString;
		nextPut: $:;
		nextPutAll: self port asString;
		nextPut: $/;
		nextPutAll: self databaseName asString;
		nextPut: $)