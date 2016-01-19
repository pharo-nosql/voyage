removing
removeValue: anObject
	| oid |
	self mutex critical: [ 
		oid := (self keyAtValue: anObject) .
		objects removeKey: oid ifAbsent: [].
		reversedObjects removeKey: anObject ifAbsent: [].
		versions removeKey: oid ifAbsent: [] ]