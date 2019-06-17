persistence
selectMany: aClass where: aBlock limit: limit offset: offset
	^ self selectMany
		queryClass: aClass; 
		where: aBlock;
		limit: limit;
		offset: offset;
		execute