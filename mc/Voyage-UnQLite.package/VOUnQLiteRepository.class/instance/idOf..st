accessing
idOf: anObject
	^ self cache 
		keyAtValue: anObject 
		ifAbsent: [ nil ]