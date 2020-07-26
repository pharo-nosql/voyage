printing
printOn: aStream
	super printOn: aStream.

	aStream nextPut: $(.
	sdamClient printStatusOn: aStream.
	aStream
		nextPut: $/;
		nextPutAll: databaseName asString;
		nextPut: $).
