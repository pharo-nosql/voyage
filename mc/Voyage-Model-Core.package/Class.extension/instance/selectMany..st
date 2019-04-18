*Voyage-Model-Core
selectMany: aBlock
	^self voyageRepository selectMany: self where: aBlock