persistence
selectMany: aClass where: aBlock sortBy: sortBlock
	^ self selectManyOperation
		queryClass: self;
		where: aBlock;
		sortBlock: sortBlock;
		execute