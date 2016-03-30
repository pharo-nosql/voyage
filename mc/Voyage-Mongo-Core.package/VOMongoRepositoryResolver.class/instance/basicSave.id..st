private persistence
basicSave: anObject id: idObject
	| futures |
	"if enabled by repository, ensure the object to update is current."
	repository isOnlyUpdateIfCurrent ifTrue: [
		self 
			basicIsCurrent: anObject
			id: idObject
			ifFalse: [ VOMongoSaveConflictError signal ] ].

	futures := self serialize: anObject id: idObject.
	"first object is always root"
	self futureInsertOrUpdate: futures first id: idObject.
	"... and I know that all extra objects will be inserted"
	futures allButFirstDo: [ :each | self futureInsert: each ].