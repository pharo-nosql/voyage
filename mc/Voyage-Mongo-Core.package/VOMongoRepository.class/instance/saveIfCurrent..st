persistence
saveIfCurrent: anObject
	self 
		save: anObject 
		id: (self keyOf: anObject)
		updateIfCurrent: true