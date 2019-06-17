persistence
selectAll: aClass
	^ self selectMany
		queryClass: aClass;
		execute
