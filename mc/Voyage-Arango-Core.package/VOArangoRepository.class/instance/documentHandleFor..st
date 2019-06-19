as yet unclassified
documentHandleFor: anObject
	^ String streamContents: [ :stream |
		stream
			nextPutAll: (self collectionNameFor: anObject class);
			nextPut: $/;
			nextPutAll: (self keyOf: anObject) ]