accessing
keyOf: anObject

	^ (self cacheFor: anObject class) 
		keyAtValue: anObject 
		ifAbsent: [ nil ]