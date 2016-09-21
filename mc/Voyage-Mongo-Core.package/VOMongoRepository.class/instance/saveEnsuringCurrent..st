persistence
saveEnsuringCurrent: anObject
	self 
		save: anObject 
		id: (self keyOf: anObject)
		ensuringCurrent: true