as yet unclassified
basicInsert
	self pool withDatabase: [ :db | 
		(repository collectionAt: object class inDatabase: db) 
			add: (serialized
				at: '_id' put: id;
				yourself).

		repository mongoUrlResolver checkLastError: db.
	].

	^ id