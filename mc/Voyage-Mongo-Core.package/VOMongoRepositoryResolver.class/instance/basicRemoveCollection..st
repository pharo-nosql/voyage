private
basicRemoveCollection: aClass
	self pool withDatabase:  [ :db | 
		(self collectionAt: aClass inDatabase: db) drop ].
