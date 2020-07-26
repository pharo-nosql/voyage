private
basicInsert
	self repository
		collectionAt: object class
		writingDo: [ :collection | 
			serialized at: repository fieldRootId put: id.
			collection
				commandInsert: serialized
				writeConcern: (self repository insertConcernFor: object class) ].
	^ id