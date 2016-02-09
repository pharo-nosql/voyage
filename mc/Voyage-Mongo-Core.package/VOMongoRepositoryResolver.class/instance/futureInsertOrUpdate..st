private persistence
futureInsertOrUpdate: aFuture 
	(self keyOf: aFuture futureId)
		ifNotNil: [ self futureUpdate: aFuture ]
		ifNil: [ self futureInsert: aFuture ]