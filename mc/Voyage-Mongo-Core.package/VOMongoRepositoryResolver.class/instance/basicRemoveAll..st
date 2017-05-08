private persistence
basicRemoveAll: aClass
	self writingPool withDatabase: [ :db |
		| removeConcern |
		(self collectionAt: aClass inDatabase: db) remove: Dictionary new.

		removeConcern := self removeConcernFor: aClass.
		mongoUrlResolver checkLastError: db concern: removeConcern ].