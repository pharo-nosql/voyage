persistence
selectMany: aClass where: aBlock limit: limit offset: offset
	^ self selectManyOperation
		queryClass: aClass; 
		where: aBlock;
		limit: limit;
		offset: offset;
		execute