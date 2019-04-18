*Voyage-Model-Core
selectMany: aBlock sortBy: sortDictionary limit: limit offset: offset
	^self voyageRepository selectMany: self where: aBlock order: sortDictionary limit: limit offset: offset