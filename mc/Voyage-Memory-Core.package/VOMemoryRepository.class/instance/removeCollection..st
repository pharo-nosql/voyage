persistence
removeCollection: aClass 
	objectMap 
		removeKey: (self collectionNameOf: aClass)
		ifAbsent: [ "Do nothing" ]	