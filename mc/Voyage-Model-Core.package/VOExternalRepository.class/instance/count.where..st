persistence
count: aClass where: aDictionary

	^ self countOperation
		queryClass: aClass;
		where: aDictionary;
		execute