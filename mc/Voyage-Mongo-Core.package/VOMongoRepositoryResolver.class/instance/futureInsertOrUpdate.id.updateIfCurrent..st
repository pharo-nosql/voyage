private persistence
futureInsertOrUpdate: aFuture id: idObject updateIfCurrent: aBoolean
	idObject == aFuture futureId
		ifTrue: [ self futureUpdate: aFuture updateIfCurrent: aBoolean ]
		ifFalse: [ self futureInsert: aFuture ]