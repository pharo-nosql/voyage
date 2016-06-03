printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(.
	members do: [:element | aStream print: element; space ].
	aStream
		nextPut: $/;
		nextPutAll: databaseName asString;
		nextPut: $).
