persistence
selectAllSortBy: sortBlock
	^ self selectMany
		queryClass: self;
		sortBlock: sortBlock;
		execute
