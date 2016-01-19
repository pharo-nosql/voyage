*voyage-model-core-extensions
selectMany: aBlock limit: limit
	^self voyageRepository selectMany: self where: aBlock limit: limit 