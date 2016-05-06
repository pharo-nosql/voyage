private persistence
futureUpdate: aFuture
	self 
		futureWithNewVersion: aFuture 
		do: [ :id :object :serialized | 
			writeStrategy
				update: object 
				serialized: serialized 
				withId: id ]
