persistence
selectMany: aClass where: aBlock sortBy: sortBlockOrSymbol
	^self readingRepositoryDo: [ :repository | repository selectMany: aClass where: aBlock sortBy: sortBlockOrSymbol]