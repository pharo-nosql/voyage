persistence
remove: anObject
	^(self list: anObject class) 
		remove: anObject
		ifAbsent: [ "Do nothing" ]