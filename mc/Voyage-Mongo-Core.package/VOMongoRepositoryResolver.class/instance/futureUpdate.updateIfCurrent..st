private persistence
futureUpdate: aFuture updateIfCurrent: aBoolean
	self 
		futureWithNewVersion: aFuture 
		do: [ :id :object :serialized | 
			repository writeStrategy
				update: object 
				serialized: serialized 
				withId: id
				updateIfCurrent: aBoolean
				resolver: self ]
