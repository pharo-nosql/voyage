persistence
remove: anObject 
	resolver remove: anObject.
	cache removeValue: anObject.