printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(.
	mongoUrls do: [:element | aStream print: element; space ].
	aStream
		nextPut: $/;
		nextPutAll: databaseName asString;
		nextPut: $).
