accessing
operationFor: anObject
	^ operations
		detect: [ :each | each object = anObject ]
		ifNone: [ nil ]