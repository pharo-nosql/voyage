*voyage-model-core-extensions
selectMany: aBlock sortBy: sortBlock
	^self voyageRepository selectMany: self where: aBlock sortBy: sortBlock