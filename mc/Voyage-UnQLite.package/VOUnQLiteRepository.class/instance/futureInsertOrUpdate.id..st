private persistence
futureInsertOrUpdate: aFuture id: idObject
	idObject
		ifNotNil: [ self futureUpdate: aFuture ]
		ifNil: [ self futureInsert: aFuture ]