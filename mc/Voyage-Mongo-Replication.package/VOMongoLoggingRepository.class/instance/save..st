persistence
save: anObject 
	self executeOperations: (super serialize: anObject)
	