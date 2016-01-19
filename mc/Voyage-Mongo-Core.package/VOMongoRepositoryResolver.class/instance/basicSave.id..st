private persistence
basicSave: anObject id: idObject
	| id ts serialized |
	
	ts := self newVersion.
	serialized := self serialize: anObject.
	serialized 
		at: VOMongoSerializer fieldVersion 
		put: ts.
	id := (self keyOf: anObject)
		ifNotNil: [ : theId | 
			self 
				update: anObject 
				serialized: serialized 
				withId: theId ]
		ifNil: [ 
			self 
				insert: anObject
				serialized: serialized 
				withId: (idObject ifNil: [ OID nextOID ]) ].
	
	self cacheAt: id put: anObject.
	self cacheAt: id putVersion: ts.