*Voyage-Model-Core
selectMany: aBlock limit: limit
	^self voyageRepository selectMany: self where: aBlock limit: limit 