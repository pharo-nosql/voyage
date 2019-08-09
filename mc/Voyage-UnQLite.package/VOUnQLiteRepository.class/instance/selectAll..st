persistence
selectAll: aClass 

	^ self selectAllOperation
		queryClass: aClass;
		execute