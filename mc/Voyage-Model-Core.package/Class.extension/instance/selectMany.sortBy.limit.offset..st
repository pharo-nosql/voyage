*voyage-model-core-extensions
selectMany: aBlock sortBy: sortDictionary limit: limit offset: offset
	^self voyageRepository selectMany: self where: aBlock order: sortDictionary limit: limit offset: offset