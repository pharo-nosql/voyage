persistence
selectMany: aClass where: aBlock sortBy: sortBlock
	^ self selectManyOperation
		queryClass: aClass;
		where: aBlock;
		sortBlock: sortBlock;
		execute