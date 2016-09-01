printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(;
		print: self primaryMongoUrl;
		nextPut: $/;
		nextPutAll: self databaseName asString;
		nextPut: $).
