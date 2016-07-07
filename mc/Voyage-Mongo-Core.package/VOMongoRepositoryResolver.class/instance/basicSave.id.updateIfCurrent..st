private persistence
basicSave: anObject id: idObject updateIfCurrent: aBoolean
	| futures |
	futures := self serialize: anObject id: idObject.
	"first object is always root"
	self futureInsertOrUpdate: futures first id: idObject updateIfCurrent: aBoolean.
	"... and I know that all extra objects will be inserted"
	futures allButFirstDo: [ :each | self futureInsert: each ].