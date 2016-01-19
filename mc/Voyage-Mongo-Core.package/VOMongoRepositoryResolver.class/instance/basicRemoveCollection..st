as yet unclassified
basicRemoveCollection: aClass
	self pool withDatabase:  [ :db | 
		(self collectionAt: aClass inDatabase: db) drop ].
