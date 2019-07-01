persistence
removeCollection: aClass 
	objectMap 
		removeKey: (self collectionNameFor: aClass)
		ifAbsent: [ "Do nothing" ]	