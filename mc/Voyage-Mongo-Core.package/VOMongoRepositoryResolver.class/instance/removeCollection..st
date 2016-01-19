private
removeCollection: aClass
	self execute: [ self basicRemoveCollection: aClass ].
	collections 
		removeKey: (self collectionNameFor: aClass)
		ifAbsent: [].