persistence
selectOne: aClass where: aDictionary
	^ self readOneOperation
		queryClass: aClass;
		where: aDictionary;
		execute