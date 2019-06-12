accessing
keyOf: anObject ifAbsent: aBlock
	^ self cache 
		keyAtValue: anObject 
		ifAbsent: aBlock