persistence
remove: anObject 
	
	^ self removeObjectOperation 
		object: anObject;
		execute