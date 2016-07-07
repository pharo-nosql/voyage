private persistence
futureInsertOrUpdate: aFuture id: idObject updateIfCurrent: aFalse
	idObject == aFuture futureId
		ifTrue: [ self futureUpdate: aFuture updateIfCurrent: aFalse ]
		ifFalse: [ self futureInsert: aFuture ]