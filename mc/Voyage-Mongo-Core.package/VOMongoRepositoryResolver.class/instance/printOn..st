printing
printOn: aStream
	super printOn: aStream.

	aStream
		nextPut: $(.
	self replicaSetMembers do: [:element | aStream print: element; space ].
	aStream
		nextPut: $/;
		nextPutAll: self databaseName asString;
		nextPut: $).
