persistence
removeCollection: aClass 

	self removeCollectionOperation 
		queryClass: aClass;
		execute