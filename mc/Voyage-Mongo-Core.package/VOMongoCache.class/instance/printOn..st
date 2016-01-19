printing
printOn: aStream
	aStream 
		nextPutAll: 'Cache';
		nextPut: $(;
		nextPutAll: objects size asString;
		space;
		nextPutAll: 'objects';
		nextPut: $).