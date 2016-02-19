private persistence
futureInsertOrUpdate: aFuture 
	(self keyOf: aFuture realObject)
		ifNotNil: [ self futureUpdate: aFuture ]
		ifNil: [ self futureInsert: aFuture ]