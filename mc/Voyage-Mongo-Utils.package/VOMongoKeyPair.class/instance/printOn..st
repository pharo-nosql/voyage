printing
printOn: aStream 
	aStream 
		nextPutAll: self key asString;
		nextPutAll: '->';
		nextPutAll: self value asString