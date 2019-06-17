private persistence
futureInsert: aFuture
	self 
		futureWithNewVersion: aFuture 
		do: [ :id :object :serialized | 
			self 
				insert: object 
				serialized: serialized 
				withId: id ]
