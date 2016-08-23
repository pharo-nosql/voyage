printing
printOn: aStream
	aStream nextPutAll: (self attributeName ifNil: [ 'Undefined' ])