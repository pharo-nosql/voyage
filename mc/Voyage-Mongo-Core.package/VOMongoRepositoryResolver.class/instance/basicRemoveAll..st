private persistence
basicRemoveAll: aClass
	self pool withDatabase:  [ :db | 
		(self collectionAt: aClass inDatabase: db) remove: Dictionary new ].