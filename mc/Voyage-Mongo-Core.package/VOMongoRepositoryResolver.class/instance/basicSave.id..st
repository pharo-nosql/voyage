private persistence
basicSave: anObject id: idObject
	| futures |
	
	futures := self serialize: anObject.
	"first object is always root"
	self futureInsertOrUpdate: futures first.
	"... and I know that all extra objects will be inserted"
	futures allButFirstDo: [ :each | self futureInsert: each ].