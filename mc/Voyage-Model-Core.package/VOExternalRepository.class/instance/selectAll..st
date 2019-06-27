persistence
selectAll: aClass
	^ self selectManyOperation
		queryClass: aClass;
		execute
