printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(;
		nextPutAll: host asString;
		nextPut: $:;
		nextPutAll: port asString;
		nextPut: $/;
		nextPutAll: databaseName asString;
		nextPut: $)