*Voyage-Model-Core
selectMany: aBlock limit: limit offset: offset
	^self voyageRepository selectMany: self where: aBlock limit: limit offset: offset