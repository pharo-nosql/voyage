persistence
removeAll: aClass 

	self removeAllOperation 
		queryClass: aClass;
		execute
	