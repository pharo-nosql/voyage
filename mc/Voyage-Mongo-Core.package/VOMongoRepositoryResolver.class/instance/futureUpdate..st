private persistence
futureUpdate: aFuture
	self 
		futureWithNewVersion: aFuture 
		do: [ :id :object :serialized | 
			repository writeStrategy
				update: object 
				serialized: serialized 
				withId: id
				resolver: self ]
