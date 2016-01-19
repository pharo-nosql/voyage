*voyage-model-core-extensions
selectMany: aBlock
	^self voyageRepository selectMany: self where: aBlock