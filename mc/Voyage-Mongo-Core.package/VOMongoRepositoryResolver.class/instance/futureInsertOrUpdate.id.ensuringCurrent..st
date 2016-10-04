private persistence
futureInsertOrUpdate: aFuture id: idObject ensuringCurrent: aBoolean
	idObject == aFuture futureId
		ifTrue: [ self futureUpdate: aFuture ensuringCurrent: aBoolean ]
		ifFalse: [ self futureInsert: aFuture ]