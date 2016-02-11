private persistence
futureInsertOrUpdate: aFuture id: idObject
	idObject == aFuture futureId
		ifTrue: [ self futureUpdate: aFuture ]
		ifFalse: [ self futureInsert: aFuture ]