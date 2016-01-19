*voyage-model-core-extensions
selectAllSortBy: sortBlock
	^self voyageRepository selectAll: self sortBy: sortBlock
