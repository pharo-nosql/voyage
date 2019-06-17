persistence
selectMany: aClass where: aBlock sortBy: sortBlock
	^ self selectMany
		queryClass: self;
		where: aBlock;
		sortBlock: sortBlock;
		execute