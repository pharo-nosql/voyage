persistence
selectAllSortBy: sortBlock
	^ self selectManyOperation
		queryClass: self;
		sortBlock: sortBlock;
		execute
