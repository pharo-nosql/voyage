private
basicInsert
	self pool withDatabase: [ :db | 
		(repository collectionAt: object class inDatabase: db) 
			add: (serialized
				at: repository fieldRootId put: id;
				yourself).

		repository mongoUrlResolver checkLastError: db.
	].

	^ id