private persistence
futureInsert: aFuture
	self 
		futureWithNewVersion: aFuture 
		do: [ :id :object :serialized | 
			'inserted' logCr.
			self 
				insert: object 
				serialized: serialized 
				withId: id ]
