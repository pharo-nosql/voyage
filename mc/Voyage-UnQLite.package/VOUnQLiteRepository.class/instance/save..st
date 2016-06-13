persistence
save: anObject
	| futures |
	
	futures := self serialize: anObject.
	"first is my desired object"
	self futureInsertOrUpdate: futures first id: (self idOf: anObject).
	"nexts are always new (at lease for now)"
	futures allButFirst do: [ :each | self futureInsert: each ].
