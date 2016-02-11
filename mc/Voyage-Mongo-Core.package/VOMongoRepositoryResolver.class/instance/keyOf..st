private accessing
keyOf: anObject
	^self cache keyAtValue: anObject ifAbsent: [ nil ]