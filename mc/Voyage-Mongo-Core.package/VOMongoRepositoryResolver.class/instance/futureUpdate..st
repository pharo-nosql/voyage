private persistence
futureUpdate: aFuture
	self 
		futureWithNewVersion: aFuture 
		do: [ :id :object :serialized | 
			self 
				update: object 
				serialized: serialized 
				withId: id ]
