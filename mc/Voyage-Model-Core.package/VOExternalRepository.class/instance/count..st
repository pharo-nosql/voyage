persistence
count: aClass 
	^ self countOperation
		queryClass: aClass;
		execute