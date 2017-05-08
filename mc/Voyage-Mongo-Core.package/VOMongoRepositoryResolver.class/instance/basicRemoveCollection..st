private
basicRemoveCollection: aClass
	self writingPool withDatabase:  [ :db |
		| removeConcern |
		(self collectionAt: aClass inDatabase: db) drop.
		
		removeConcern := self removeConcernFor: aClass.
		mongoUrlResolver checkLastError: db concern: removeConcern ]
