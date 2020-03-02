accessing
keyOf: anObject

	^ (self cacheAt: anObject class) 
		keyAtValue: anObject 
		ifAbsent: [ nil ]