persistence
selectOne: aClass where: condition
	^ self readOneOperation
		queryClass: aClass;
		where: condition;
		execute